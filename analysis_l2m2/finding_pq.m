% This file calculates the exponents p and q in the Ori-expansion through fitting  
% with models.  

% These values are then displayed in the paper as a table.

M = 1;
S = 19;
time = 1400;
start = 5;
finish = 640;

%model = 'a*r^(-q)*(r-1)^(-p) + b';
%startpoints = [0.05, -1, 1, 0];
%fitType = fittype(model, 'independent', 'r', 'coefficients', {'a', 'q', 'p', 'b'});

model = 'a*r^(-q)*(r-1)^(-p)'
startpoints = [0.05, -1, 1];
fitType = fittype(model, 'independent', 'r', 'coefficients', {'a', 'q', 'p'});

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc10/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed time of t=1400.
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

rmpath('../new_data_l2m2/loc10/SpaceDAT')

r = rho_infield./(1 - rho_infield/S);

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_10 = abs(bbscalar).*time.^2; % time-independent bbscalar

f_10 = fit(r(start:finish),indep_bbscalar_1400_10(start:finish),fitType,'Start',startpoints)
%f_10 = fit(r(end-1000:end),indep_bbscalar_1400_10(end-1000:end),fitType,'Start',startpoints)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc11 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc11/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed time of t=1400.
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

rmpath('../new_data_l2m2/loc11/SpaceDAT')

r = rho_infield./(1 - rho_infield/S);

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_11 = abs(bbscalar).*time.^2; % time-independent bbscalar


f_11 = fit(r(start:finish),indep_bbscalar_1400_11(start:finish),fitType,'Start',startpoints)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc12/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed time of t=1400.
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

rmpath('../new_data_l2m2/loc12/SpaceDAT')

r = rho_infield./(1 - rho_infield/S);

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_12 = abs(bbscalar).*time.^2; % time-independent bbscalar


f_12 = fit(r(start:finish),indep_bbscalar_1400_12(start:finish),fitType,'Start',startpoints)

%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc13 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc13/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed time of t = 1400.
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

rmpath('../new_data_l2m2/loc13/SpaceDAT')

r = rho_infield./(1 - rho_infield/S);
Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_13 = abs(bbscalar).*time.^2; % time-independent bbscalar


f_13 = fit(r(start:finish),indep_bbscalar_1400_13(start:finish),fitType,'Start',startpoints)
%f_13 = fit(r(end-1000:end),indep_bbscalar_1400_13(end-1000:end),fitType,'Start',startpoints)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc14 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc14/SpaceDAT')

Psi0_gpu1 = load('Psi0_101400.dat'); %-- data at fixed time of t = 1400
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

rmpath('../new_data_l2m2/loc14/SpaceDAT')

r = rho_infield./(1 - rho_infield/S);
Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar = Psi0.*Psi4;
indep_bbscalar_1400_14 = abs(bbscalar).*time.^2; % time-independent bbscalar

f_14 = fit(r(start:finish),indep_bbscalar_1400_14(start:finish),fitType,'Start',startpoints)