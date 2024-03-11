M = 1;
S = 19;

%&&&&&&&&&&&&&&& For Gaussian 1.1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%######################### time = 1000
addpath('new_data/loc11/SpaceDAT')

Psi0_gpu1 = load('Psi0_101000.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201000.dat');
Psi0_gpu3 = load('Psi0_301000.dat');
Psi0_gpu4 = load('Psi0_401000.dat');

Psi4_gpu1 = load('Psi4_101000.dat');
Psi4_gpu2 = load('Psi4_201000.dat');
Psi4_gpu3 = load('Psi4_301000.dat');
Psi4_gpu4 = load('Psi4_401000.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc11/SpaceDAT')

time = 1000
r = rho_infield./(1 - rho_infield/S);

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1000_11 = abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1000_11 = indep_bbscalar_1000_11.*r.^-1.*(r-M).^1;

%###################### time = 1200
addpath('new_data/loc11/SpaceDAT')

Psi0_gpu1 = load('Psi0_101200.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201200.dat');
Psi0_gpu3 = load('Psi0_301200.dat');
Psi0_gpu4 = load('Psi0_401200.dat');

Psi4_gpu1 = load('Psi4_101200.dat');
Psi4_gpu2 = load('Psi4_201200.dat');
Psi4_gpu3 = load('Psi4_301200.dat');
Psi4_gpu4 = load('Psi4_401200.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc11/SpaceDAT')

time = 1200

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1200_11 = abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1200_11 = indep_bbscalar_1200_11.*r.^-1.*(r-M).^1;

%@@@@@@@@@@@@@@@@@@@@@@ time = 1400

addpath('new_data/loc11/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201400.dat');
Psi0_gpu3 = load('Psi0_301400.dat');
Psi0_gpu4 = load('Psi0_401400.dat');

Psi4_gpu1 = load('Psi4_101400.dat');
Psi4_gpu2 = load('Psi4_201400.dat');
Psi4_gpu3 = load('Psi4_301400.dat');
Psi4_gpu4 = load('Psi4_401400.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc11/SpaceDAT')

time = 1400

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_11 = abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1400_11 = indep_bbscalar_1400_11.*r.^-1.*(r-M).^1;

%%%%%%%%%%%%#####$$$$$$$$$$$ For Gaussian 1.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% time = 1000
addpath('new_data/loc12/SpaceDAT')

Psi0_gpu1 = load('Psi0_101000.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201000.dat');
Psi0_gpu3 = load('Psi0_301000.dat');
Psi0_gpu4 = load('Psi0_401000.dat');

Psi4_gpu1 = load('Psi4_101000.dat');
Psi4_gpu2 = load('Psi4_201000.dat');
Psi4_gpu3 = load('Psi4_301000.dat');
Psi4_gpu4 = load('Psi4_401000.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc12/SpaceDAT')

time = 1000

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1000_12 = abs(bbscalar).*time.^2; % time-independent bbscalar

oricoeff_1000_12 = indep_bbscalar_1000_12.*r.^-1.*(r-M).^1;

%################################# time = 1200

addpath('new_data/loc12/SpaceDAT')

Psi0_gpu1 = load('Psi0_101200.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201200.dat');
Psi0_gpu3 = load('Psi0_301200.dat');
Psi0_gpu4 = load('Psi0_401200.dat');

Psi4_gpu1 = load('Psi4_101200.dat');
Psi4_gpu2 = load('Psi4_201200.dat');
Psi4_gpu3 = load('Psi4_301200.dat');
Psi4_gpu4 = load('Psi4_401200.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc12/SpaceDAT')

time = 1200

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1200_12 = abs(bbscalar).*time.^2; % time-independent bbscalar

oricoeff_1200_12 = indep_bbscalar_1200_12.*r.^-1.*(r-M).^1;
%############################### time = 1400

addpath('new_data/loc12/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201400.dat');
Psi0_gpu3 = load('Psi0_301400.dat');
Psi0_gpu4 = load('Psi0_401400.dat');

Psi4_gpu1 = load('Psi4_101400.dat');
Psi4_gpu2 = load('Psi4_201400.dat');
Psi4_gpu3 = load('Psi4_301400.dat');
Psi4_gpu4 = load('Psi4_401400.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc12/SpaceDAT')

time = 1400

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_12 = abs(bbscalar).*time.^2; % time-independent bbscalar

oricoeff_1400_12 = indep_bbscalar_1400_12.*r.^-1.*(r-M).^1;

%%%%%%%%%%%%%%%%$$$$$$$$$$ For Gaussian 1.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% time = 1000
addpath('new_data/loc13/SpaceDAT')

Psi0_gpu1 = load('Psi0_101000.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201000.dat');
Psi0_gpu3 = load('Psi0_301000.dat');
Psi0_gpu4 = load('Psi0_401000.dat');

Psi4_gpu1 = load('Psi4_101000.dat');
Psi4_gpu2 = load('Psi4_201000.dat');
Psi4_gpu3 = load('Psi4_301000.dat');
Psi4_gpu4 = load('Psi4_401000.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc13/SpaceDAT')

time = 1000

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1000_13= abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1000_13 = indep_bbscalar_1000_13.*r.^-1.*(r-M).^1;

%&&&&&&&&&&&&&&&&&&&&&&&&&&& time = 1200
addpath('new_data/loc13/SpaceDAT')

Psi0_gpu1 = load('Psi0_101200.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201200.dat');
Psi0_gpu3 = load('Psi0_301200.dat');
Psi0_gpu4 = load('Psi0_401200.dat');

Psi4_gpu1 = load('Psi4_101200.dat');
Psi4_gpu2 = load('Psi4_201200.dat');
Psi4_gpu3 = load('Psi4_301200.dat');
Psi4_gpu4 = load('Psi4_401200.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc13/SpaceDAT')

time = 1200

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1200_13 = abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1200_13 = indep_bbscalar_1200_13.*r.^-1.*(r-M).^1;

%&&&&&&&&&&&&&&&&&&&&&&&&&&& time = 1400

addpath('new_data/loc13/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201400.dat');
Psi0_gpu3 = load('Psi0_301400.dat');
Psi0_gpu4 = load('Psi0_401400.dat');

Psi4_gpu1 = load('Psi4_101400.dat');
Psi4_gpu2 = load('Psi4_201400.dat');
Psi4_gpu3 = load('Psi4_301400.dat');
Psi4_gpu4 = load('Psi4_401400.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc13/SpaceDAT')

time = 1400

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_13 = abs(bbscalar).*time.^2; % time-independent bbscalar

oricoeff_1400_13 = indep_bbscalar_1400_13.*r.^-1.*(r-M).^1;

%%%%%%%%%%%%%%%%%%%%%%%%%%% For Gaussian 1.4 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

% time = 1000
addpath('new_data/loc14/SpaceDAT')

Psi0_gpu1 = load('Psi0_101000.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201000.dat');
Psi0_gpu3 = load('Psi0_301000.dat');
Psi0_gpu4 = load('Psi0_401000.dat');

Psi4_gpu1 = load('Psi4_101000.dat');
Psi4_gpu2 = load('Psi4_201000.dat');
Psi4_gpu3 = load('Psi4_301000.dat');
Psi4_gpu4 = load('Psi4_401000.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc14/SpaceDAT')

time = 1000

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1000_14= abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1000_14 = indep_bbscalar_1000_14.*r.^-1.*(r-M).^1;

%&&&&&&&&&&&&&&&&&&&&&&&&&&& time = 1200
addpath('new_data/loc14/SpaceDAT')

Psi0_gpu1 = load('Psi0_101200.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201200.dat');
Psi0_gpu3 = load('Psi0_301200.dat');
Psi0_gpu4 = load('Psi0_401200.dat');

Psi4_gpu1 = load('Psi4_101200.dat');
Psi4_gpu2 = load('Psi4_201200.dat');
Psi4_gpu3 = load('Psi4_301200.dat');
Psi4_gpu4 = load('Psi4_401200.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc14/SpaceDAT')

time = 1200

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1200_14 = abs(bbscalar).*time.^2; % time-independent bbscalar
oricoeff_1200_14 = indep_bbscalar_1200_14.*r.^-1.*(r-M).^1;

%&&&&&&&&&&&&&&&&&&&&&&&&&&& time = 1400

addpath('new_data/loc14/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed r*
Psi0_gpu2 = load('Psi0_201400.dat');
Psi0_gpu3 = load('Psi0_301400.dat');
Psi0_gpu4 = load('Psi0_401400.dat');

Psi4_gpu1 = load('Psi4_101400.dat');
Psi4_gpu2 = load('Psi4_201400.dat');
Psi4_gpu3 = load('Psi4_301400.dat');
Psi4_gpu4 = load('Psi4_401400.dat');

rho_infield = cat(1,Psi0_gpu1(:,1),Psi0_gpu2(:,1),Psi0_gpu3(:,1),Psi0_gpu4(:,1));
real_infield = cat(1,Psi0_gpu1(:,2),Psi0_gpu2(:,2),Psi0_gpu3(:,2),Psi0_gpu4(:,2));
imag_infield = cat(1,Psi0_gpu1(:,3),Psi0_gpu2(:,3),Psi0_gpu3(:,3),Psi0_gpu4(:,3));

rho_outfield = cat(1,Psi4_gpu1(:,1),Psi4_gpu2(:,1),Psi4_gpu3(:,1),Psi4_gpu4(:,1));
real_outfield = cat(1,Psi4_gpu1(:,2),Psi4_gpu2(:,2),Psi4_gpu3(:,2),Psi4_gpu4(:,2));
imag_outfield = cat(1,Psi4_gpu1(:,3),Psi4_gpu2(:,3),Psi4_gpu3(:,3),Psi4_gpu4(:,3));

rmpath('new_data/loc14/SpaceDAT')

time = 1400

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_14 = abs(bbscalar).*time.^2; % time-independent bbscalar

oricoeff_1400_14 = indep_bbscalar_1400_14.*r.^-1.*(r-M).^1;


%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

plot(r,oricoeff_1000_11,'r:')
hold on
plot(r,oricoeff_1200_11,'r--')
plot(r,oricoeff_1400_11,'r.-')

plot(r,oricoeff_1000_12,'g:')
plot(r,oricoeff_1200_12,'g--')
plot(r,oricoeff_1400_12,'g.-')

plot(r,oricoeff_1000_13,'b:')
plot(r,oricoeff_1200_13,'b--')
plot(r,oricoeff_1400_13,'b.-')

plot(r,oricoeff_1000_14,'k:')
plot(r,oricoeff_1200_14,'k--')
plot(r,oricoeff_1400_14,'k.-')

hold off
xlim([-100,1000])
xlabel('$\frac{r}{M}$','Interpreter','latex')
ylabel('$e^{\xi}_{2,2}$','Interpreter','latex')
legend('', '1.1', '','', '1.2', '','','1.3' ,'' ,'','1.4' ,'' )

%filename = fullfile('plots', 'oricoeffs_vs_r.pdf');
filename = fullfile('plots', 'oricoeffs_vs_r.fig');
filename = fullfile('plots', 'oricoeffs_vs_r.png');
saveas(gcf,filename);
