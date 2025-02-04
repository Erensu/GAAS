#include "ygz/scene_retrieve.h"

/*SceneRetriever::SceneRetriever(Scene& original_scene_input)
{
    this->original_scene=original_scene;
    this->_init_retriever();
}*/

Scene::Scene()
{
    return;//TODO:fill in init functions.
}


int Scene::getImageCount()
{
    return this->vec_p2d.size();
}


void Scene::saveFile(const std::string &filename)
{
    
    std::ofstream ofs(filename);

    {
        boost::archive::text_oarchive oa(ofs);
        oa << *this;
    }
}



void Scene::saveVoc()
{
    vector<cv::Mat> features = point_desps;
    
    // branching factor and depth levels 
    const int k = 10;
    const int L = 3;
    const WeightingType weight = TF_IDF;
    const ScoringType score = L1_NORM;

    //OrbVocabulary voc(k, L, weight, score);
    Vocabulary voc(k, L, weight, score);
    //BriefVocabulary voc(k,L,weight,score);

    cout << "Creating a small " << k << "^" << L << " vocabulary..." << endl;
    voc.create(features);
    cout << "... done!" << endl;

    cout << "Vocabulary information: " << endl
    << voc << endl << endl;

//     // lets do something with this vocabulary
//     cout << "Matching images against themselves (0 low, 1 high): " << endl;
//     BowVector v1, v2;
//     for(int i = 0; i < NIMAGES; i++)
//     {
//     voc.transform(features[i], v1);
//     for(int j = i-4; j < i+4; j++)
//     {
//     if(j<0)
//     {
//         continue;
//     }
//     if(j>=NIMAGES)
//     {
//         continue;
// 
//     }
//     voc.transform(features[i], v2);
// 
//     double score = voc.score(v1, v2);
//     cout << "Image " << i << " vs Image " << j << ": " << score << endl;
//     }
//     }

    // save the vocabulary to disk
    cout << endl << "Saving vocabulary..." << endl;
    voc.save("small_voc.yml.gz");
    cout << "Done" << endl;
    
}


void Scene::loadFile(const std::string &filename)
{

    std::ifstream ifs(filename);

    {
        boost::archive::text_iarchive ia(ifs);
        ia >> *this;
        cout << "Deserialization finished" << endl;
    }
}

void Scene::test()
{
    cout<<"---------------Current scene info---------------"<<endl;
    cout<<"mIndex: "<<mIndex<<endl;
    cout<<"hasScale: "<<hasScale<<endl;
    cout<<"vec_p2d size: "<<vec_p2d.size()<<endl;
    cout<<"vec_p3d size: "<<vec_p3d.size()<<endl;
    cout<<"point_desps size: "<<point_desps.size()<<endl;
    cout<<"vec_r size: "<<mVecR.size()<<endl;
    cout<<"vec_t size: "<<mVecT.size()<<endl;
    
    for(auto& m: this->mVecR)
    {
        cout<<"VecR is :"<<endl<<m<<endl;
    }
    
    for(auto& m: this->mVecT)
    {
        cout<<"VecT is :"<<endl<<m<<endl;
    }
    
    cout<<"---------------Current scene info---------------"<<endl;
}


SceneRetriever::SceneRetriever()
{

}

SceneRetriever::SceneRetriever(const string& voc,const string& scene_file)
{
    this->original_scene.loadFile(scene_file);
    this->ploop_closing_manager_of_scene = new LoopClosingManager(voc);
    this->_init_retriever();
}

void SceneRetriever::_init_retriever()
{
    auto p2d = this->original_scene.getP2D();
    auto p3d = this->original_scene.getP3D();

    for(int frame_index = 0; frame_index<original_scene.getImageCount(); frame_index++)
    {
        ptr_frameinfo pfr = shared_ptr<FrameInfo>(new FrameInfo());
	    pfr->keypoints = p2d[frame_index];
	    pfr->descriptors = this->original_scene.getDespByIndex(frame_index);
        
        this->ploop_closing_manager_of_scene->addKeyFrame(pfr);
    }
}


/*std::pair<std::vector<std::vector<DMatch> >,std::vector<int>> SceneRetriever::matchImageWithScene2D(const cv::Mat image);
{
    //step<1> extract feature.
    for (int i=0;i<this->original_scene.getImageCount();i++)
    {
      cv::Mat& desp = this->original_scene.getDespByIndex(i);
      ...//generate "info".
      this->loop_closing_manager_of_scene.addKeyFrame(ptr_frameinfo info);
    }
    
    //step<2> find loop with scene by loop closing algorithms.
    this->loop_closing_manager_of_scene.queryKeyFrames(...);
    //step<3> do match.return 2d matching.
    return ...
	
}*/
int SceneRetriever::retrieveSceneFromStereoImage(const cv::Mat image_left_rect, const cv::Mat image_right_rect, const cv::Mat& Q_mat, cv::Mat& RT_mat_of_stereo_cam_output, bool& match_success)
{   
    
    //step<1> generate sparse pointcloud of image pair input and scene.
  
    //<1>-(1) match left image with scene.
    std::vector<DMatch> good_matches_output;
    ptr_frameinfo frameinfo_left = this->ploop_closing_manager_of_scene->extractFeature(image_left_rect);
    int loop_index= this->ploop_closing_manager_of_scene->detectLoopByKeyFrame(frameinfo_left, good_matches_output, false);
    if(loop_index<0)
    {
        //frame match failed.
        cout<<"frame match failed!"<<endl;
        return -1;
    }
    
    //<1>-(2) calc left image point 3d position.LoopClosingManager
    //ptr_frameinfo frameinfo_left = this->ploop_closing_manager_of_scene->extractFeature(image_left_rect);
    std::vector<Point2f> InputKeypoints;
    std::vector<Point2f> PyrLKmatched_points;
    //for(int index = 0;index<frameinfo_left->keypoints.size();index++)
    for(int index = 0;index<good_matches_output.size();index++)// iterate matches.
    {
        int kp_index = good_matches_output[index].queryIdx;
        InputKeypoints.push_back(frameinfo_left->keypoints[kp_index].pt);//only reserve matched points.
    }
    
    std::vector<unsigned char> PyrLKResults;
    std::vector<float> err;
    cv::calcOpticalFlowPyrLK( image_left_rect,
		image_right_rect,
		InputKeypoints,
		PyrLKmatched_points,
		PyrLKResults,
		err
	);
    
    std::vector<Point2f> matched_points;
    std::vector<float> disparity_of_points;
    for(int index = 0; index<frameinfo_left->keypoints.size(); index++)
    {
        if(PyrLKResults[index] == 1)
        {
            matched_points.push_back(InputKeypoints[index]);
            disparity_of_points.push_back(PyrLKmatched_points[index].x-InputKeypoints[index].x);
        }
    }
    std::vector<Point3f> points_3d;
    cv::reprojectImageTo3D(disparity_of_points, points_3d, Q_mat);

    
    //step<2> match 2 clouds.
      //method<1>
      /*
        GICP = pcl::GeneralizedIterativeClosestPoint< PointSource, PointTarget >::estimateRigidTransformationBFGS 	( 	const PointCloudSource &  	cloud_src, //3d to 3d.
		const std::vector< int > &  	indices_src, 
		const PointCloudTarget &  	cloud_tgt,
		const std::vector< int > &  	indices_tgt,
		Eigen::Matrix4f &  	transformation_matrix 
	) 	*/
      //method<2>
      /*
       * SCIA = pcl::SampleConsensusInitialAlignment< PointSource, PointTarget, FeatureT >
       * SCIA = computeTransformation 	( 	PointCloudSource &  	output,		//useless.
		const Eigen::Matrix4f &  	guess 
	) 	
       */
}



int SceneRetriever::retrieveSceneWithScaleFromMonoImage(const cv::Mat image_in_rect,const cv::Mat& cameraMatrix, cv::Mat& RT_mat_of_mono_cam_output, bool& match_success)
{
    if(this->original_scene.hasScale == false)
    {
        match_success = false;
        return -1;
    }
    ptr_frameinfo mono_image_info = this->ploop_closing_manager_of_scene->extractFeature(image_in_rect);
    std::vector <DMatch> good_matches;
    int loop_index = this->ploop_closing_manager_of_scene->detectLoopByKeyFrame(mono_image_info,good_matches,false);
    if (loop_index<0)
    {
        return -1;//Loop not found!
    }
    //query 3d points and do 2d-3d matching by PnP ransac.
    
    std::vector<cv::Point3f> points3d;
    std::vector<cv::Point2f> projectedPoints2d;
    
    for(auto &match:good_matches)
    {
        auto pt1 = mono_image_info->keypoints[match.queryIdx].pt;//image point 2d.
        projectedPoints2d.push_back(pt1);
        auto pt2 = this->original_scene.getP3D().at(loop_index)[match.trainIdx];//scene point 3d.
		    //image point 2d of scene: this->loop_closing_manager_of_scene.getFrameInfoById(loop_index)->keypoints[match.trainIdx].pt;
        points3d.push_back(pt2);
    }
    cv::Mat distCoeffs = cv::Mat::zeros(4, 1, CV_64FC1);
    cv::Mat rvec,tvec,inliers;
    bool cv_solvepnpransac_result = cv::solvePnPRansac (points3d,//3d
        projectedPoints2d,//2d
        cameraMatrix,
        distCoeffs,
        rvec,
        tvec,
        //bool useExtrinsicGuess = 
        false,
        //int iterationsCount = 
	100,
        //float reprojectionError = 
	8.0,
        //double  confidence = 
	0.99,
        inliers,
        //int flags = 
	cv::SOLVEPNP_ITERATIVE 
        );
    //check inliers.
    cv::Mat R,retMat;
    if(cv_solvepnpransac_result )//&& inliers.size()>8)
    {
      cv::Rodrigues(rvec,R);//match success
      retMat=cv::Mat::eye(4,4,CV_32F);
      retMat.rowRange(Range(0,3)).colRange(Range(0,3)) = R;
      retMat.colRange(3,1).rowRange(0,3) = tvec;
      RT_mat_of_mono_cam_output = retMat;
      return loop_index;
    }
    else
    {
        return -1;
    }
    //return.
    
}
