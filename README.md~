单目相机与激光雷达的联合标定
 
[流程提要]

1. 相机内参标定：实现相机坐标系中三维点至成像平面坐标系二维点的转换
   使用toolbox_calib工具包，求得相机内参：fc(1),fc(2),cc(1),cc(2),skew,distortion
2. 相机与激光雷达的联合标定：实现激光雷达坐标系中三维点至相机坐标系中三维点的转换 
   使用lcct工具包，求得旋转矩阵R[3×3]和平移矩阵T[3*1]
3. 对雷达数据和图像数据相互投影，得到渲染图像进行精度的验证

[具体实现操作]

# 棋盘格标定板：
* 棋盘格图案示例
![CalibBoard] [CalibBoard]  
[CalibBoard]: laser_cam_calib/imgs/calibration_pattern

* 测量棋盘格方块的边长（mm）及x,y轴方格的个数
* 校准目标的尺寸越大通常越好,建议将图案打印在塑料或厚的海报纸上并粘在平板上防止变形。
* 请尽量选择奇偶型棋盘格[x!=y]

# 数据采集：
* 15-25对相机-激光雷达图像，用于相机内参标定和联合标定
* 相机数据：尽量保证包含摄像范围内尽可能全面的视角和位置变换
* 点云数据：尽量保证至少有20-30个激光雷达点打在标定板上，此处根据设备对标定板至激光雷达原点的距离有一定要求
* 命名规则：图像为img_targetX.jpg ; 点云为laser_targetX.xyz；请注意序号的对应！

# 点云数据处理：
1. .pcd转.xyz：从每一帧的pcd文件中提取三维坐标点信息
   运行 make  ./pcd2xyz 0509
*  在此可通过arg 参数选择日期文件夹中的数据
   原始文件夹：sample data/caliblidar/0509
   目标文件夹：sample data/caliblidar/0509_xyz
2. [optional] 预处理所有.xyz文件，选取一定范围内的数据
   运行 filter_xyz.py
   原始文件夹：sample data/caliblidar/0509_xyz
   目标文件夹： sample data/caliblidar/0509_filtxyz
3. 通过 matlab plot 画出点云图，手工选取标定板上的变量, 并创建并保存至相应的  laser_targetX.xyz文件
   运行 plotxyz.m 
*  需把plotxyz.m放置在*.xyz文件夹中
   如图示例：[select point example] select point example.png

# 联合参数标定：lcct
工具包页面：[main plane] Laser-Camera Calibration Toolbox.png
1. 点击 select camera calib file 按钮选择匹配的相机内参文件 Calib_Results.mat

2. 点击 Search scan files 按钮 选择输入的图像-激光雷达对
*  Enter base name of scans (without numbers or suffix): laser_target
*  Enter suffix of scan files ([] = "xyz"): 
--- Loaded list of active scan/image pairs ---
1   2   3   6   7   9  10  11  12  13  14  15 
只需输入.xyz的前缀名称，即可自动添加与之对应的图像，此处需保证两种数据序号的统一 

3. 点击 Select planes 按钮 选择标定板上的数据点
* 在标定每一张图像前，建议通过面板下方<< pre和 Next>>按钮检查所有雷达数据是否清晰可辨，并剔除不可使用的数据对并进行重新处理。
* 选择标定板四个角点，在这个区域内的数据点则会被自动选择。请注意保证选择范围内的数据足够准确，保证有20-30点被选中即可。
如图：[select plane example] select plane example.png

4. 点击 Calibrate 按钮 生成标定结果
5. 点击 Save Calib file 按钮 保存标定结果

# 相机内参标定：toolbox_calib
1. 在matlab中进入文件夹路径运行 calib_gui.m ，选择 standard模式
工具包页面：[toolbox_calib] toolbox_calib.png
2. 点击 Read images 读取相机图像数据
3. 点击 Extract grid corners 提取图像中标定板的角点
   如图示例：[Extract grid corners] Extract grid corners.png
4. 点击 Analyse error 查看标定误差 / 点击 Reproject on images 查看在图像上的二次投影
   如图示例：[error example] error example.png
5. [optional] 对个别误差较大的数据:
*  点击 Recomp.corners 重新提取角点并重复 4-5
*  删除/替换图像数据 
6. 点击 Calibration 进行标定 / Save 存储结果

详细细节参照：[http://www.vision.caltech.edu/bouguetj/calib_doc/htmls/example.html]

# 标定结果检验：
1. 将三维点云坐标投至二维图像，根据距离渲染颜色
2. 将二维像素点的颜色渲染至对应的三维点云




 
