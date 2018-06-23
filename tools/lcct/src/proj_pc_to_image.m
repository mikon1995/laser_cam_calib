% Indicate the project index of frames 
ProjFrmIndex = [1:2];
% Input the intrinsic matrix, lidar-camera-RT matrix
intrinsicA = [            2.1008   -0.0008    0.9861;
                            0    2.1105    0.7216;
                            0         0    0.0010];
% laser64Rc = [                0.998454  0.027855  0.048104;
%                             0.050329  -0.085612  -0.995057;
%                             -0.023599  0.995939  -0.086882];
% laser64Tc = [               -0.049183;
%                             -0.142086;
%                             -0.578486];
% intrinsicA = [            2.0773   -0.0008   1.0041;
%                             0    2.0799    0.6931;
%                             0         0    0.0010];
% laser64Rc = [                1.0000    0.0025   -0.0009;
%                             -0.0007   -0.0826   -0.9966;
%                             -0.0025    0.9966   -0.0826];
% laser64Tc = [               -0.6311;
%                             -0.1599;
%                             -0.6466];

% intrinsicA = [            2.0007   0   0.947;
%                             0    2.021   0.773;
%                             0         0    0.0010];
laser64Rc = [                0.999997  0.002482  -0.000917;
                            -0.000709  -0.082607  -0.996582;
                            -0.002549  0.996579  -0.082605];
laser64Tc = [               -0.631092;
                            -0.159921;
                            -0.646643];

nProjectFrames = length(ProjFrmIndex);
sprintf('%d', nProjectFrames);
imgNameFormat = 'c103_00%d.png';
hdlNameFormat = 'HDL64_00%d.pcd';
projDir       = './proj103a/';
projImgNameFormat = [projDir '%d.jpg'];
laser64Tc = laser64Tc * 100;

if exist(projDir, 'dir')
    warning('Proj directory exists!');
else 
    mkdir (projDir);
end

for tfrm = 1:nProjectFrames
    frmIdx = ProjFrmIndex(tfrm);
    dt = [];
    img_name = sprintf(imgNameFormat, frmIdx);
    hdl_name = sprintf(hdlNameFormat, frmIdx);
    
    img = imread(img_name);
    tsize = size(img);
    
    hdl_cloud       = loadpcd(hdl_name);
    cloud           = double(hdl_cloud);
    cloud(1:3, :)   = cloud(1:3, :) * 100;
    cloud   = cloud(1:3, :);
    layer   = hdl_cloud(4, :);
    dist    = sqrt(cloud(1,:).^2 + cloud(2,:).^2 + cloud(3,:).^2 );
    
    fprintf('Processing image: %s\n', img_name);
    projImgName = sprintf(projImgNameFormat, frmIdx);
    proj_cloud      = laser64Rc * cloud + repmat(laser64Tc, 1, size(cloud, 2));
    proj_cloud_2d   = intrinsicA * proj_cloud;
    proj_cloud_2d(1, :) = proj_cloud_2d(1, :) ./ proj_cloud_2d(3, :);
    proj_cloud_2d(2, :) = proj_cloud_2d(2, :) ./ proj_cloud_2d(3, :);
    II = find(proj_cloud_2d(1,:)>0 & proj_cloud_2d(1,:)<=tsize(2) ...
                & proj_cloud_2d(2,:)>0 & proj_cloud_2d(2,:)<=tsize(1) ...
                & dist(1, :) > 300.0   & cloud(2, :) > 0);
    proj_cloud_valid = proj_cloud_2d(:, II);
    layer_valid = layer(II);
    dist_valid = dist(II);
    
    proj_cloud_valid = proj_cloud_valid(:, 1:1:end);
    layer_valid = layer_valid(1:1:end);
    dist_valid  = dist_valid(1:1:end);
    max_dist = max(dist_valid) + 0.001;
                
    figure(1);
    imshow(img); 
    hold on;
    cols = jet;
    for i=1:size(proj_cloud_valid, 2)
        %   col_idx = round(layer_valid(i) ./ 5) + 1;
        col_idx = ceil(dist_valid(i) / max_dist * size(cols, 1));
        plot(proj_cloud_valid(1, i), proj_cloud_valid(2, i),'o','LineWidth',3,'MarkerSize',1,'Color', cols(col_idx,:));
    end
    drawnow
    frame = getframe(1);
    im = frame2im(frame);
    imwrite(im, projImgName);
    hold off;
end



