% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2098.128318935082461 ; 2101.810381510168554 ];

%-- Principal point:
cc = [ 998.597850013448465 ; 529.599057976124413 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.065552290263011 ; 0.065791186483882 ; -0.003712013215307 ; 0.004503393497609 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 10.926154355908047 ; 10.793715077890814 ];

%-- Principal point uncertainty:
cc_error = [ 12.624335498471838 ; 12.497226918762369 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.011135692928494 ; 0.048298187581739 ; 0.001716381208408 ; 0.001642947706460 ; 0.000000000000000 ];

%-- Image size:
nx = 1920;
ny = 1200;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 15;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 9.789825e-01 ; 2.211058e+00 ; 6.300982e-02 ];
Tc_1  = [ -3.547047e+02 ; -2.485613e+02 ; 4.106905e+03 ];
omc_error_1 = [ 3.077654e-03 ; 5.028673e-03 ; 7.695165e-03 ];
Tc_error_1  = [ 2.480071e+01 ; 2.448249e+01 ; 2.116246e+01 ];

%-- Image #2:
omc_2 = [ 1.103549e+00 ; 2.822832e+00 ; 3.099438e-01 ];
Tc_2  = [ -1.917886e+02 ; -2.376301e+02 ; 3.312051e+03 ];
omc_error_2 = [ 3.030905e-03 ; 5.240987e-03 ; 1.096975e-02 ];
Tc_error_2  = [ 1.989372e+01 ; 1.975165e+01 ; 1.778259e+01 ];

%-- Image #3:
omc_3 = [ -9.576546e-01 ; -2.592225e+00 ; 5.682574e-01 ];
Tc_3  = [ -2.639835e+01 ; -2.441786e+02 ; 3.834612e+03 ];
omc_error_3 = [ 3.230136e-03 ; 6.240889e-03 ; 8.864591e-03 ];
Tc_error_3  = [ 2.300547e+01 ; 2.281434e+01 ; 1.906822e+01 ];

%-- Image #4:
omc_4 = [ 1.021450e+00 ; 2.363277e+00 ; -2.556961e-02 ];
Tc_4  = [ 1.482586e+02 ; -2.423773e+02 ; 3.670556e+03 ];
omc_error_4 = [ 3.129102e-03 ; 5.053096e-03 ; 8.505966e-03 ];
Tc_error_4  = [ 2.201344e+01 ; 2.184141e+01 ; 1.889190e+01 ];

%-- Image #5:
omc_5 = [ 1.027457e+00 ; 2.659584e+00 ; -1.002649e+00 ];
Tc_5  = [ 4.658228e+02 ; -1.237687e+02 ; 4.346561e+03 ];
omc_error_5 = [ 2.627505e-03 ; 5.901664e-03 ; 9.315510e-03 ];
Tc_error_5  = [ 2.615000e+01 ; 2.592418e+01 ; 2.108093e+01 ];

%-- Image #6:
omc_6 = [ 1.031457e+00 ; 2.626719e+00 ; 3.183437e-01 ];
Tc_6  = [ 3.297265e+02 ; -2.505285e+02 ; 3.125409e+03 ];
omc_error_6 = [ 3.257719e-03 ; 5.348144e-03 ; 9.616968e-03 ];
Tc_error_6  = [ 1.877213e+01 ; 1.864804e+01 ; 1.656044e+01 ];

%-- Image #7:
omc_7 = [ -1.119647e+00 ; -2.866588e+00 ; 4.189597e-01 ];
Tc_7  = [ 7.675365e+02 ; -2.287454e+02 ; 3.758041e+03 ];
omc_error_7 = [ 3.105136e-03 ; 5.784606e-03 ; 1.197531e-02 ];
Tc_error_7  = [ 2.261726e+01 ; 2.263064e+01 ; 2.003914e+01 ];

%-- Image #8:
omc_8 = [ -7.743498e-01 ; -2.575649e+00 ; 1.004170e+00 ];
Tc_8  = [ 1.071133e+03 ; -1.780436e+02 ; 4.235572e+03 ];
omc_error_8 = [ 4.008082e-03 ; 5.495752e-03 ; 8.334899e-03 ];
Tc_error_8  = [ 2.571654e+01 ; 2.562851e+01 ; 2.184785e+01 ];

%-- Image #9:
omc_9 = [ -1.183872e+00 ; -2.819452e+00 ; -2.897601e-01 ];
Tc_9  = [ 3.698203e+02 ; -2.069874e+02 ; 3.117836e+03 ];
omc_error_9 = [ 1.405049e-03 ; 6.191653e-03 ; 1.159637e-02 ];
Tc_error_9  = [ 1.878855e+01 ; 1.862705e+01 ; 1.640057e+01 ];

%-- Image #10:
omc_10 = [ -1.043916e+00 ; -2.731504e+00 ; 4.902172e-01 ];
Tc_10  = [ 9.032870e+02 ; -2.140549e+02 ; 4.716708e+03 ];
omc_error_10 = [ 3.079023e-03 ; 6.711600e-03 ; 1.069865e-02 ];
Tc_error_10  = [ 2.845693e+01 ; 2.831280e+01 ; 2.455949e+01 ];

%-- Image #11:
omc_11 = [ 1.061423e+00 ; 2.521145e+00 ; -1.123369e-01 ];
Tc_11  = [ 1.183358e+03 ; -2.105790e+02 ; 4.669712e+03 ];
omc_error_11 = [ 3.609220e-03 ; 5.565090e-03 ; 9.697373e-03 ];
Tc_error_11  = [ 2.827189e+01 ; 2.831221e+01 ; 2.585015e+01 ];

%-- Image #12:
omc_12 = [ 1.056700e+00 ; 2.527017e+00 ; -1.409929e-01 ];
Tc_12  = [ -7.172569e+02 ; -2.552229e+02 ; 4.150204e+03 ];
omc_error_12 = [ 2.035276e-03 ; 5.407471e-03 ; 9.071098e-03 ];
Tc_error_12  = [ 2.522512e+01 ; 2.488496e+01 ; 2.143469e+01 ];

%-- Image #13:
omc_13 = [ -9.786929e-01 ; -2.628543e+00 ; 5.397889e-01 ];
Tc_13  = [ 1.008722e+03 ; -2.157845e+02 ; 4.531050e+03 ];
omc_error_13 = [ 2.982802e-03 ; 6.320232e-03 ; 9.171126e-03 ];
Tc_error_13  = [ 2.743314e+01 ; 2.728641e+01 ; 2.378603e+01 ];

%-- Image #14:
omc_14 = [ -9.383423e-01 ; -2.559469e+00 ; 5.660071e-01 ];
Tc_14  = [ 1.131971e+03 ; -2.142715e+02 ; 4.451182e+03 ];
omc_error_14 = [ 2.942630e-03 ; 6.130105e-03 ; 8.591870e-03 ];
Tc_error_14  = [ 2.704956e+01 ; 2.691816e+01 ; 2.373875e+01 ];

%-- Image #15:
omc_15 = [ 1.049937e+00 ; 2.680688e+00 ; -8.566538e-01 ];
Tc_15  = [ 4.819261e+02 ; -1.604813e+02 ; 4.870623e+03 ];
omc_error_15 = [ 2.527928e-03 ; 5.877711e-03 ; 9.535828e-03 ];
Tc_error_15  = [ 2.929495e+01 ; 2.903605e+01 ; 2.403119e+01 ];

