%%%%%%%%%%%%%%%%%%%%%%%%% 1.2_higher_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../old_data_l2m2/loc12')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_12_old = infield_data(1:51000,1);
real_infield = infield_data(1:51000,2);
imag_infield = infield_data(1:51000,3);
real_der_infield = der_infield_data(1:51000,2);
imag_der_infield = der_infield_data(1:51000,3);

time_outfield = outfield_data(1:51000,1);
real_outfield = outfield_data(1:51000,2);
imag_outfield = outfield_data(1:51000,3);
real_der_outfield = der_outfield_data(1:51000,2);
imag_der_outfield = der_outfield_data(1:51000,3);

rmpath('../old_data_l2m2/loc12')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_12_old = Psi0.*Psi4;
hair_12_old = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%% 1.2_lower_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../new_data_l2m2/loc12/TimeDAT')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_12_new = infield_data(1:28000,1);
real_infield = infield_data(1:28000,2);
imag_infield = infield_data(1:28000,3);
real_der_infield = der_infield_data(1:28000,2);
imag_der_infield = der_infield_data(1:28000,3);

time_outfield = outfield_data(1:28000,1);
real_outfield = outfield_data(1:28000,2);
imag_outfield = outfield_data(1:28000,3);
real_der_outfield = der_outfield_data(1:28000,2);
imag_der_outfield = der_outfield_data(1:28000,3);

rmpath('../new_data_l2m2/loc12/TimeDAT')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_12_new = Psi0.*Psi4;
hair_12_new = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%% 1.3_higher_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../old_data_l2m2/loc13')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_13_old = infield_data(1:51000,1);
real_infield = infield_data(1:51000,2);
imag_infield = infield_data(1:51000,3);
real_der_infield = der_infield_data(1:51000,2);
imag_der_infield = der_infield_data(1:51000,3);

time_outfield = outfield_data(1:51000,1);
real_outfield = outfield_data(1:51000,2);
imag_outfield = outfield_data(1:51000,3);
real_der_outfield = der_outfield_data(1:51000,2);
imag_der_outfield = der_outfield_data(1:51000,3);

rmpath('../old_data_l2m2/loc13')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_13_old = Psi0.*Psi4;
hair_13_old = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%% 1.3_lower_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../new_data_l2m2/loc13/TimeDAT')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_13_new = infield_data(1:28000,1);
real_infield = infield_data(1:28000,2);
imag_infield = infield_data(1:28000,3);
real_der_infield = der_infield_data(1:28000,2);
imag_der_infield = der_infield_data(1:28000,3);

time_outfield = outfield_data(1:28000,1);
real_outfield = outfield_data(1:28000,2);
imag_outfield = outfield_data(1:28000,3);
real_der_outfield = der_outfield_data(1:28000,2);
imag_der_outfield = der_outfield_data(1:28000,3);

rmpath('../new_data_l2m2/loc13/TimeDAT')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_13_new = Psi0.*Psi4;
hair_13_new = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%% 1.4_higher_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../old_data_l2m2/loc14')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_14_old = infield_data(1:51000,1);
real_infield = infield_data(1:51000,2);
imag_infield = infield_data(1:51000,3);
real_der_infield = der_infield_data(1:51000,2);
imag_der_infield = der_infield_data(1:51000,3);

time_outfield = outfield_data(1:51000,1);
real_outfield = outfield_data(1:51000,2);
imag_outfield = outfield_data(1:51000,3);
real_der_outfield = der_outfield_data(1:51000,2);
imag_der_outfield = der_outfield_data(1:51000,3);

rmpath('../old_data_l2m2/loc14')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_14_old = Psi0.*Psi4;
hair_14_old = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%% 1.4_lower_resolution %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../new_data_l2m2/loc14/TimeDAT')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_14_new = infield_data(1:28000,1);
real_infield = infield_data(1:28000,2);
imag_infield = infield_data(1:28000,3);
real_der_infield = der_infield_data(1:28000,2);
imag_der_infield = der_infield_data(1:28000,3);

time_outfield = outfield_data(1:28000,1);
real_outfield = outfield_data(1:28000,2);
imag_outfield = outfield_data(1:28000,3);
real_der_outfield = der_outfield_data(1:28000,2);
imag_der_outfield = der_outfield_data(1:28000,3);

rmpath('../new_data_l2m2/loc14/TimeDAT')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_14_new = Psi0.*Psi4;
hair_14_new = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

plot(log10(time_infield_12_old),hair_12_old,'-r','LineWidth',2)
hold on
plot(log10(time_infield_12_new),hair_12_new,'-.r','LineWidth',2)
plot(log10(time_infield_13_old),hair_13_old,'-g','LineWidth',2)
plot(log10(time_infield_13_new),hair_13_new,'-.g','LineWidth',2)
plot(log10(time_infield_14_old),hair_14_old,'-b','LineWidth',2)
plot(log10(time_infield_14_new),hair_14_new,'-.b','LineWidth',2)
hold off
xlabel('$\log_{10}\left(\frac{v}{M}\right)$','Interpreter','latex')
ylabel('$|\xi_{2,2}''|$','Interpreter','latex')
ylim([0,60])
xlim([2,3.5])
legend('1.2_{hr}','1.2_{lr}','1.3_{hr}','1.3_{lr}','1.4_{hr}','1.4_{lr}')

filename = fullfile('../plots_l2m2', 'hair_vs_t_convergence.fig');
%filename = fullfile('../plots_l2m2', 'hair_vs_t_convergence.pdf');
%filename = fullfile('../plots_l2m2', 'hair_vs_t_convergence.png');
saveas(gcf,filename);