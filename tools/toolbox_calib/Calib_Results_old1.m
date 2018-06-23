% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2077.251422337141321 ; 2079.949395490107236 ];

%-- Principal point:
cc = [ 1004.100381835050712 ; 693.092385884315149 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.086606799026115 ; 0.171247662555746 ; 0.013325005192246 ; 0.001868269343318 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 25.796515597149430 ; 27.277432394221925 ];

%-- Principal point uncertainty:
cc_error = [ 30.143326103113544 ; 29.480677356479990 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.024517912458765 ; 0.084680844160221 ; 0.003748897020768 ; 0.003758550481647 ; 0.000000000000000 ];

%-- Image size:
nx = 1920;
ny = 1200;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 28;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.058465e+00 ; 2.893202e+00 ; 1.936430e-01 ];
Tc_1  = [ -1.553749e+03 ; -5.687440e+02 ; 4.703142e+03 ];
omc_error_1 = [ 8.452290e-03 ; 2.102681e-02 ; 3.223368e-02 ];
Tc_error_1  = [ 6.871170e+01 ; 6.876399e+01 ; 6.986560e+01 ];

%-- Image #2:
omc_2 = [ -1.017383e+00 ; -2.783054e+00 ; -9.453912e-01 ];
Tc_2  = [ -1.512466e+03 ; -4.064975e+02 ; 4.227561e+03 ];
omc_error_2 = [ 7.060756e-03 ; 1.727419e-02 ; 2.004132e-02 ];
Tc_error_2  = [ 6.239294e+01 ; 6.239600e+01 ; 6.689373e+01 ];

%-- Image #3:
omc_3 = [ -9.746688e-01 ; -2.885151e+00 ; 7.231244e-01 ];
Tc_3  = [ -1.563781e+03 ; -4.387997e+02 ; 5.811920e+03 ];
omc_error_3 = [ 1.183982e-02 ; 1.445721e-02 ; 2.369193e-02 ];
Tc_error_3  = [ 8.603006e+01 ; 8.435503e+01 ; 7.803563e+01 ];

%-- Image #4:
omc_4 = [ 8.452043e-01 ; 2.371748e+00 ; 3.392536e-01 ];
Tc_4  = [ -7.987665e+02 ; -5.776514e+02 ; 4.865282e+03 ];
omc_error_4 = [ 7.959791e-03 ; 1.599368e-02 ; 1.701275e-02 ];
Tc_error_4  = [ 7.107479e+01 ; 6.957009e+01 ; 6.410882e+01 ];

%-- Image #5:
omc_5 = [ 9.444059e-01 ; 2.512288e+00 ; -2.840000e-01 ];
Tc_5  = [ -1.210046e+03 ; -5.081944e+02 ; 5.623548e+03 ];
omc_error_5 = [ 4.426405e-03 ; 1.812901e-02 ; 2.223892e-02 ];
Tc_error_5  = [ 8.207883e+01 ; 8.084429e+01 ; 7.344427e+01 ];

%-- Image #6:
omc_6 = [ 1.017422e+00 ; 2.882731e+00 ; 1.603888e-01 ];
Tc_6  = [ -1.012564e+03 ; -5.371755e+02 ; 4.030190e+03 ];
omc_error_6 = [ 7.496028e-03 ; 2.131881e-02 ; 3.408829e-02 ];
Tc_error_6  = [ 5.853224e+01 ; 5.817478e+01 ; 5.709840e+01 ];

%-- Image #7:
omc_7 = [ 9.682057e-01 ; 2.744015e+00 ; -4.258458e-01 ];
Tc_7  = [ -1.099448e+03 ; -4.748743e+02 ; 4.880649e+03 ];
omc_error_7 = [ 2.743730e-03 ; 1.823838e-02 ; 2.480146e-02 ];
Tc_error_7  = [ 7.179867e+01 ; 7.041261e+01 ; 6.313181e+01 ];

%-- Image #8:
omc_8 = [ -8.707042e-01 ; -2.830374e+00 ; -7.095247e-01 ];
Tc_8  = [ -2.448388e+02 ; -4.045188e+02 ; 3.414187e+03 ];
omc_error_8 = [ 3.747954e-03 ; 1.641832e-02 ; 1.921416e-02 ];
Tc_error_8  = [ 4.986623e+01 ; 4.857440e+01 ; 4.346495e+01 ];

%-- Image #9:
omc_9 = [ -1.022841e+00 ; -2.860493e+00 ; -5.259096e-02 ];
Tc_9  = [ -3.078815e+02 ; -5.383633e+02 ; 4.199473e+03 ];
omc_error_9 = [ 6.816880e-03 ; 1.559749e-02 ; 2.747820e-02 ];
Tc_error_9  = [ 6.104471e+01 ; 5.964621e+01 ; 5.447756e+01 ];

%-- Image #10:
omc_10 = [ -9.938981e-01 ; -2.650206e+00 ; -6.094812e-01 ];
Tc_10  = [ -3.768817e+02 ; -4.060980e+02 ; 3.480255e+03 ];
omc_error_10 = [ 5.372655e-03 ; 1.557610e-02 ; 1.842289e-02 ];
Tc_error_10  = [ 5.071526e+01 ; 4.957561e+01 ; 4.521587e+01 ];

%-- Image #11:
omc_11 = [ 8.666433e-01 ; 2.446740e+00 ; 3.697499e-01 ];
Tc_11  = [ -1.085469e+02 ; -5.334052e+02 ; 4.239214e+03 ];
omc_error_11 = [ 8.652579e-03 ; 1.547447e-02 ; 1.763382e-02 ];
Tc_error_11  = [ 6.184666e+01 ; 6.012999e+01 ; 5.403125e+01 ];

%-- Image #12:
omc_12 = [ -7.629165e-01 ; -2.316528e+00 ; 1.779942e-01 ];
Tc_12  = [ -1.855401e+02 ; -5.359093e+02 ; 4.153890e+03 ];
omc_error_12 = [ 8.948983e-03 ; 1.310098e-02 ; 1.697189e-02 ];
Tc_error_12  = [ 6.054033e+01 ; 5.892900e+01 ; 5.365134e+01 ];

%-- Image #13:
omc_13 = [ -1.064798e+00 ; -2.931485e+00 ; 2.233662e-03 ];
Tc_13  = [ -4.121763e+02 ; -6.578343e+02 ; 6.232072e+03 ];
omc_error_13 = [ 1.193088e-02 ; 2.795971e-02 ; 4.630892e-02 ];
Tc_error_13  = [ 9.058802e+01 ; 8.849058e+01 ; 8.079377e+01 ];

%-- Image #14:
omc_14 = [ -9.691891e-01 ; -2.934528e+00 ; 6.242857e-01 ];
Tc_14  = [ -3.143280e+02 ; -5.687900e+02 ; 6.985464e+03 ];
omc_error_14 = [ 1.023616e-02 ; 1.490359e-02 ; 2.518494e-02 ];
Tc_error_14  = [ 1.017938e+02 ; 9.914052e+01 ; 8.487078e+01 ];

%-- Image #15:
omc_15 = [ -8.986084e-01 ; -2.640672e+00 ; 1.281194e-01 ];
Tc_15  = [ 5.987926e+02 ; -5.421343e+02 ; 4.354114e+03 ];
omc_error_15 = [ 6.109028e-03 ; 1.329216e-02 ; 2.102915e-02 ];
Tc_error_15  = [ 6.463819e+01 ; 6.214026e+01 ; 5.637048e+01 ];

%-- Image #16:
omc_16 = [ -9.374487e-01 ; -2.408848e+00 ; -5.210318e-01 ];
Tc_16  = [ 3.672947e+02 ; -3.911572e+02 ; 3.623721e+03 ];
omc_error_16 = [ 5.040804e-03 ; 1.457305e-02 ; 1.759574e-02 ];
Tc_error_16  = [ 5.308067e+01 ; 5.160891e+01 ; 4.828320e+01 ];

%-- Image #17:
omc_17 = [ -7.916583e-01 ; -2.727229e+00 ; 6.002521e-01 ];
Tc_17  = [ 6.438446e+02 ; -4.911761e+02 ; 4.908539e+03 ];
omc_error_17 = [ 8.820981e-03 ; 1.371877e-02 ; 2.169709e-02 ];
Tc_error_17  = [ 7.172323e+01 ; 6.982335e+01 ; 6.202859e+01 ];

%-- Image #18:
omc_18 = [ -8.634745e-01 ; -2.505985e+00 ; 2.174662e-01 ];
Tc_18  = [ 7.019985e+02 ; -5.679994e+02 ; 4.548058e+03 ];
omc_error_18 = [ 6.798220e-03 ; 1.226573e-02 ; 1.891999e-02 ];
Tc_error_18  = [ 6.759724e+01 ; 6.496993e+01 ; 5.918266e+01 ];

%-- Image #19:
omc_19 = [ -6.972902e-01 ; -2.616530e+00 ; 7.065610e-01 ];
Tc_19  = [ 1.155306e+03 ; -4.730221e+02 ; 5.223270e+03 ];
omc_error_19 = [ 9.169243e-03 ; 1.377192e-02 ; 2.055803e-02 ];
Tc_error_19  = [ 7.682200e+01 ; 7.497084e+01 ; 7.050105e+01 ];

%-- Image #20:
omc_20 = [ NaN ; NaN ; NaN ];
Tc_20  = [ NaN ; NaN ; NaN ];
omc_error_20 = [ NaN ; NaN ; NaN ];
Tc_error_20  = [ NaN ; NaN ; NaN ];

%-- Image #21:
omc_21 = [ -9.138130e-01 ; -2.692716e+00 ; -6.787096e-01 ];
Tc_21  = [ -1.842897e+02 ; -3.547160e+02 ; 2.742711e+03 ];
omc_error_21 = [ 4.510802e-03 ; 1.588055e-02 ; 1.842446e-02 ];
Tc_error_21  = [ 4.002591e+01 ; 3.900703e+01 ; 3.548457e+01 ];

%-- Image #22:
omc_22 = [ -6.908492e-01 ; -2.703981e+00 ; 6.015889e-01 ];
Tc_22  = [ 1.800865e+02 ; -4.270060e+02 ; 4.139568e+03 ];
omc_error_22 = [ 8.521173e-03 ; 1.343146e-02 ; 2.053416e-02 ];
Tc_error_22  = [ 6.035491e+01 ; 5.867029e+01 ; 5.032174e+01 ];

%-- Image #23:
omc_23 = [ NaN ; NaN ; NaN ];
Tc_23  = [ NaN ; NaN ; NaN ];
omc_error_23 = [ NaN ; NaN ; NaN ];
Tc_error_23  = [ NaN ; NaN ; NaN ];

%-- Image #24:
omc_24 = [ NaN ; NaN ; NaN ];
Tc_24  = [ NaN ; NaN ; NaN ];
omc_error_24 = [ NaN ; NaN ; NaN ];
Tc_error_24  = [ NaN ; NaN ; NaN ];

%-- Image #25:
omc_25 = [ NaN ; NaN ; NaN ];
Tc_25  = [ NaN ; NaN ; NaN ];
omc_error_25 = [ NaN ; NaN ; NaN ];
Tc_error_25  = [ NaN ; NaN ; NaN ];

%-- Image #26:
omc_26 = [ NaN ; NaN ; NaN ];
Tc_26  = [ NaN ; NaN ; NaN ];
omc_error_26 = [ NaN ; NaN ; NaN ];
Tc_error_26  = [ NaN ; NaN ; NaN ];

%-- Image #27:
omc_27 = [ 9.624563e-01 ; 2.687522e+00 ; -3.465173e-01 ];
Tc_27  = [ -1.586861e+02 ; -5.089506e+02 ; 5.129254e+03 ];
omc_error_27 = [ 4.612719e-03 ; 1.757338e-02 ; 2.326614e-02 ];
Tc_error_27  = [ 7.468110e+01 ; 7.274069e+01 ; 6.198255e+01 ];

%-- Image #28:
omc_28 = [ 8.652988e-01 ; 2.193946e+00 ; -4.752947e-03 ];
Tc_28  = [ -2.984316e+02 ; -5.278109e+02 ; 5.038693e+03 ];
omc_error_28 = [ 8.306876e-03 ; 1.568182e-02 ; 1.634619e-02 ];
Tc_error_28  = [ 7.323917e+01 ; 7.148179e+01 ; 6.322209e+01 ];

