% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2007.352823148555217 ; 2021.045354183642985 ];

%-- Principal point:
cc = [ 947.682099978323663 ; 773.718031172524775 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.118099192820227 ; 0.178508571104038 ; 0.017896820200903 ; -0.005835874004291 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 29.075821155961901 ; 29.266446708814112 ];

%-- Principal point uncertainty:
cc_error = [ 18.766657780823305 ; 29.928158646420005 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.023101858728482 ; 0.093082830267608 ; 0.003256141701996 ; 0.002005680402493 ; 0.000000000000000 ];

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
omc_1 = [ 1.057903e+00 ; 2.897269e+00 ; 2.360012e-01 ];
Tc_1  = [ -1.424213e+03 ; -7.540882e+02 ; 4.551043e+03 ];
omc_error_1 = [ 6.031459e-03 ; 1.533090e-02 ; 3.058251e-02 ];
Tc_error_1  = [ 4.306750e+01 ; 6.901934e+01 ; 7.194392e+01 ];

%-- Image #2:
omc_2 = [ NaN ; NaN ; NaN ];
Tc_2  = [ NaN ; NaN ; NaN ];
omc_error_2 = [ NaN ; NaN ; NaN ];
Tc_error_2  = [ NaN ; NaN ; NaN ];

%-- Image #3:
omc_3 = [ -9.518973e-01 ; -2.875292e+00 ; 6.784879e-01 ];
Tc_3  = [ -1.400939e+03 ; -6.637773e+02 ; 5.612111e+03 ];
omc_error_3 = [ 8.167296e-03 ; 9.801248e-03 ; 2.272741e-02 ];
Tc_error_3  = [ 5.427575e+01 ; 8.429219e+01 ; 8.490177e+01 ];

%-- Image #4:
omc_4 = [ 8.787204e-01 ; 2.357753e+00 ; 3.915305e-01 ];
Tc_4  = [ -1.343304e+03 ; -7.766141e+02 ; 4.672621e+03 ];
omc_error_4 = [ 6.300590e-03 ; 1.288425e-02 ; 1.981571e-02 ];
Tc_error_4  = [ 4.487682e+01 ; 7.061933e+01 ; 7.278919e+01 ];

%-- Image #5:
omc_5 = [ 9.796592e-01 ; 2.523026e+00 ; -2.317826e-01 ];
Tc_5  = [ -1.755486e+03 ; -7.337829e+02 ; 5.413807e+03 ];
omc_error_5 = [ 3.916127e-03 ; 1.460606e-02 ; 2.223058e-02 ];
Tc_error_5  = [ 5.259810e+01 ; 8.208948e+01 ; 8.642298e+01 ];

%-- Image #6:
omc_6 = [ 1.018371e+00 ; 2.882216e+00 ; 1.973196e-01 ];
Tc_6  = [ -9.023662e+02 ; -6.949584e+02 ; 3.898930e+03 ];
omc_error_6 = [ 5.254859e-03 ; 1.675010e-02 ; 3.070164e-02 ];
Tc_error_6  = [ 3.677477e+01 ; 5.852993e+01 ; 5.951747e+01 ];

%-- Image #7:
omc_7 = [ 9.724753e-01 ; 2.780531e+00 ; -3.949743e-01 ];
Tc_7  = [ -9.640924e+02 ; -6.632490e+02 ; 4.711837e+03 ];
omc_error_7 = [ 2.098712e-03 ; 1.281033e-02 ; 2.256891e-02 ];
Tc_error_7  = [ 4.520907e+01 ; 7.040260e+01 ; 6.996065e+01 ];

%-- Image #8:
omc_8 = [ NaN ; NaN ; NaN ];
Tc_8  = [ NaN ; NaN ; NaN ];
omc_error_8 = [ NaN ; NaN ; NaN ];
Tc_error_8  = [ NaN ; NaN ; NaN ];

%-- Image #9:
omc_9 = [ -1.015441e+00 ; -2.847314e+00 ; -8.492923e-02 ];
Tc_9  = [ -1.929876e+02 ; -7.013808e+02 ; 4.056108e+03 ];
omc_error_9 = [ 5.442147e-03 ; 1.161819e-02 ; 2.385359e-02 ];
Tc_error_9  = [ 3.825991e+01 ; 6.023552e+01 ; 5.980203e+01 ];

%-- Image #10:
omc_10 = [ NaN ; NaN ; NaN ];
Tc_10  = [ NaN ; NaN ; NaN ];
omc_error_10 = [ NaN ; NaN ; NaN ];
Tc_error_10  = [ NaN ; NaN ; NaN ];

%-- Image #11:
omc_11 = [ 8.943944e-01 ; 2.477931e+00 ; 4.186191e-01 ];
Tc_11  = [ 7.902815e+00 ; -6.965784e+02 ; 4.079291e+03 ];
omc_error_11 = [ 7.315778e-03 ; 9.742847e-03 ; 2.004571e-02 ];
Tc_error_11  = [ 3.859785e+01 ; 6.039538e+01 ; 6.057364e+01 ];

%-- Image #12:
omc_12 = [ -7.352943e-01 ; -2.292897e+00 ; 1.422795e-01 ];
Tc_12  = [ -7.164662e+01 ; -6.964584e+02 ; 4.003757e+03 ];
omc_error_12 = [ 8.397372e-03 ; 8.620018e-03 ; 1.691635e-02 ];
Tc_error_12  = [ 3.787854e+01 ; 5.935645e+01 ; 5.955455e+01 ];

%-- Image #13:
omc_13 = [ -1.056473e+00 ; -2.914729e+00 ; -7.086252e-04 ];
Tc_13  = [ -2.418622e+02 ; -8.982463e+02 ; 6.015242e+03 ];
omc_error_13 = [ 9.079847e-03 ; 2.000852e-02 ; 3.492576e-02 ];
Tc_error_13  = [ 5.674504e+01 ; 8.908131e+01 ; 8.820666e+01 ];

%-- Image #14:
omc_14 = [ -9.467952e-01 ; -2.910017e+00 ; 5.804679e-01 ];
Tc_14  = [ -1.234699e+02 ; -8.368039e+02 ; 6.730004e+03 ];
omc_error_14 = [ 7.143858e-03 ; 1.031475e-02 ; 2.334026e-02 ];
Tc_error_14  = [ 6.345042e+01 ; 9.956828e+01 ; 9.720517e+01 ];

%-- Image #15:
omc_15 = [ -8.870351e-01 ; -2.629404e+00 ; 9.970503e-02 ];
Tc_15  = [ 7.207988e+02 ; -7.118454e+02 ; 4.179311e+03 ];
omc_error_15 = [ 5.463037e-03 ; 1.094294e-02 ; 1.867949e-02 ];
Tc_error_15  = [ 4.021888e+01 ; 6.270570e+01 ; 6.329530e+01 ];

%-- Image #16:
omc_16 = [ NaN ; NaN ; NaN ];
Tc_16  = [ NaN ; NaN ; NaN ];
omc_error_16 = [ NaN ; NaN ; NaN ];
Tc_error_16  = [ NaN ; NaN ; NaN ];

%-- Image #17:
omc_17 = [ -7.666706e-01 ; -2.702704e+00 ; 5.713047e-01 ];
Tc_17  = [ 7.774592e+02 ; -6.790654e+02 ; 4.695046e+03 ];
omc_error_17 = [ 6.640707e-03 ; 9.823333e-03 ; 1.969523e-02 ];
Tc_error_17  = [ 4.436078e+01 ; 6.990296e+01 ; 7.070823e+01 ];

%-- Image #18:
omc_18 = [ -8.451466e-01 ; -2.487498e+00 ; 1.840803e-01 ];
Tc_18  = [ 8.296463e+02 ; -7.454865e+02 ; 4.362273e+03 ];
omc_error_18 = [ 6.022740e-03 ; 9.395685e-03 ; 1.737682e-02 ];
Tc_error_18  = [ 4.199306e+01 ; 6.551880e+01 ; 6.640253e+01 ];

%-- Image #19:
omc_19 = [ -6.698096e-01 ; -2.593214e+00 ; 6.760055e-01 ];
Tc_19  = [ 1.296666e+03 ; -6.744531e+02 ; 4.976962e+03 ];
omc_error_19 = [ 6.873278e-03 ; 9.792630e-03 ; 1.886936e-02 ];
Tc_error_19  = [ 4.751046e+01 ; 7.494292e+01 ; 7.905922e+01 ];

%-- Image #20:
omc_20 = [ -9.857372e-01 ; -2.843093e+00 ; -8.605384e-02 ];
Tc_20  = [ -1.374379e+02 ; -6.023971e+02 ; 3.215184e+03 ];
omc_error_20 = [ 4.489080e-03 ; 9.548918e-03 ; 2.147216e-02 ];
Tc_error_20  = [ 3.035059e+01 ; 4.778237e+01 ; 4.763214e+01 ];

%-- Image #21:
omc_21 = [ NaN ; NaN ; NaN ];
Tc_21  = [ NaN ; NaN ; NaN ];
omc_error_21 = [ NaN ; NaN ; NaN ];
Tc_error_21  = [ NaN ; NaN ; NaN ];

%-- Image #22:
omc_22 = [ -6.669870e-01 ; -2.683967e+00 ; 5.620992e-01 ];
Tc_22  = [ 2.932589e+02 ; -5.857297e+02 ; 3.976696e+03 ];
omc_error_22 = [ 6.479968e-03 ; 9.288411e-03 ; 1.959637e-02 ];
Tc_error_22  = [ 3.749930e+01 ; 5.885837e+01 ; 5.776848e+01 ];

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
omc_26 = [ 1.051467e+00 ; 2.854951e+00 ; 2.120230e-01 ];
Tc_26  = [ -1.514518e+01 ; -7.323850e+02 ; 4.183472e+03 ];
omc_error_26 = [ 6.032531e-03 ; 1.604239e-02 ; 2.817475e-02 ];
Tc_error_26  = [ 3.957694e+01 ; 6.192650e+01 ; 6.218362e+01 ];

%-- Image #27:
omc_27 = [ 9.763756e-01 ; 2.734335e+00 ; -3.186869e-01 ];
Tc_27  = [ -1.853022e+01 ; -7.063427e+02 ; 4.942897e+03 ];
omc_error_27 = [ 4.608402e-03 ; 1.360892e-02 ; 2.140650e-02 ];
Tc_error_27  = [ 4.662141e+01 ; 7.329168e+01 ; 7.107488e+01 ];

%-- Image #28:
omc_28 = [ 8.923736e-01 ; 2.230635e+00 ; 3.034418e-02 ];
Tc_28  = [ -1.607147e+02 ; -7.231842e+02 ; 4.867911e+03 ];
omc_error_28 = [ 8.311533e-03 ; 1.049253e-02 ; 1.737023e-02 ];
Tc_error_28  = [ 4.589538e+01 ; 7.220963e+01 ; 6.998512e+01 ];

