#include <stdio.h> //standard input&output
#include <stdlib.h>
#include <string>
#include <iostream>
#include <fstream> 
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h> //definitions for several PointT type structures
#include <stdio.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
using namespace std;
using namespace pcl;

int main (int argc, char** argv){
  ofstream point;
  typedef pcl::PointXYZ PointT;
  PointCloud<PointXYZ>::Ptr cloud (new PointCloud<PointXYZ>);
  string arg = argv[1];
  string root = "/home/sensetime/laser_cam_calib/sample data/caliblidar" + arg + "/";
  string filename = "";
  string dst_filename = "";
  string t = "";
  string folder = "";
  struct dirent *dirp; 
  DIR* dir = opendir(root.c_str()); 
  //打开该目录，返回目录指针
  while ((dirp = readdir(dir)) != NULL) {
  //读目录返回一行行读取目录的文件结构体指针，指针中存的有文件属性，文件/文件夹
    if (dirp->d_type == DT_REG) {
        // 文件
        printf("%s\n", dirp->d_name);
        filename = root + dirp->d_name;
        t = filename.substr(0, filename.find(".pcd"));
        dst_filename = t.insert(t.find(arg) + arg.length(), "_xyz") + ".xyz";
	dst_filename = dst_filename.replace(dst_filename.find("HDL64_"), 6,"laser_target");
        dst_filename = dst_filename.replace(dst_filename.find("t00"), 3,"t");
	folder = dst_filename.substr(0, dst_filename.rfind("/"));
	mkdir(folder.c_str(), S_IRWXU);
	//cout << dst_filename << endl;
        point.open(dst_filename.c_str(), std::ios::out | std::ios::app);
      if(!point.is_open()) return 0;
      if(pcl::io::loadPCDFile<PointT> (filename, *cloud) == -1){
//* load the file
        PCL_ERROR ("Couldn't read PCD file \n");
        return (-1);

      }
      printf("Loaded %d data points from PCD\n",cloud->width * cloud->height); 

      for (size_t i = 0; i < cloud->points.size (); ++i){
        if (-3 <= cloud->points[i].x <= 3 && 4<=cloud->points[i].y<=7){
          point<<cloud->points[i].x<<' '<<cloud->points[i].y<<' '<<cloud->points[i].z<<endl;
        }
      }

      point.close();
         
    }
  }
  closedir(dir);
  return 0;
}
