addpath('../old_data_l2m2/loc10')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_10 = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);
real_der_infield = der_infield_data(:,2);
imag_der_infield = der_infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);
real_der_outfield = der_outfield_data(:,2);
imag_der_outfield = der_outfield_data(:,3);

rmpath('../old_data_l2m2/loc10')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_10 = Psi0.*Psi4;
hair_10 = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('../old_data_l2m2/loc11')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_11 = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);
real_der_infield = der_infield_data(:,2);
imag_der_infield = der_infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);
real_der_outfield = der_outfield_data(:,2);
imag_der_outfield = der_outfield_data(:,3);

rmpath('../old_data_l2m2/loc11')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_11 = Psi0.*Psi4;
hair_11 = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%{
plot(log10(time_infield),log10(abs(bbscalar_11)))
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')

filename = fullfile('plots', 'bbscalar_vs_t.pdf');
saveas(gcf,filename);
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc12')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_12 = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);
real_der_infield = der_infield_data(:,2);
imag_der_infield = der_infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);
real_der_outfield = der_outfield_data(:,2);
imag_der_outfield = der_outfield_data(:,3);

rmpath('../old_data_l2m2/loc12')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;
der_Psi0 = real_der_infield + 1i.*imag_der_infield;
der_Psi4 = real_der_outfield + 1i.*imag_der_outfield;
bbscalar_12 = Psi0.*Psi4;
hair_12 = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);
%{
plot(log10(time_infield),log10(abs(bbscalar_12)))
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')

filename = fullfile('plots', 'bbscalar_vs_t_12.pdf');
saveas(gcf,filename);
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc13')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_13 = infield_data(1:51000,1);
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
bbscalar_13 = Psi0.*Psi4;
hair_13 = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%{
plot(log10(time_infield),log10(abs(bbscalar_13)))
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')

filename = fullfile('plots', 'bbscalar_vs_t_13.pdf');
saveas(gcf,filename);
%}

addpath('../old_data_l2m2/loc14')
infield_data = load('Psi0_TimeDAT_0.dat');
der_infield_data = load('Psi0_TimeDAT_1.dat');
outfield_data = load('Psi4_TimeDAT_0.dat');
der_outfield_data = load('Psi4_TimeDAT_1.dat');

time_infield_14 = infield_data(1:51000,1);
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
bbscalar_14 = Psi0.*Psi4;
hair_14 = abs(Psi0.*der_Psi4 + Psi4.*der_Psi0);

%{
plot(log10(time_infield),log10(abs(bbscalar_14)))
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')

filename = fullfile('plots', 'bbscalar_vs_t_14.pdf');
saveas(gcf,filename);
%}

plot(log10(time_infield_10),log10(abs(bbscalar_10)),':','LineWidth',2)
hold on
plot(log10(time_infield_11),log10(abs(bbscalar_11)),'--','LineWidth',2)
%plot(log10(time_infield_11(end-45647:end)),-1.0.*log10(time_infield_11(end-45647:end)) + 1.25,'k--','LineWidth',2)
plot(log10(time_infield_12),log10(abs(bbscalar_12)),'-','LineWidth',2)
plot(log10(time_infield_13),log10(abs(bbscalar_13)),'-.','LineWidth',2)
plot(log10(time_infield_14),log10(abs(bbscalar_14)),'-','LineWidth',2)
plot(log10(time_infield_11(end-52647:end)),-1.0.*log10(time_infield_11(end-52647:end)) + 0.6,'k--','LineWidth',2)
hold off
xlim([1,3.5])
%ylim([])
xlabel('$\log_{10}\left(\frac{v}{M}\right)$','Interpreter','latex')
ylabel('$\log_{10}|\psi_{0}\psi_{4}|$','Interpreter','latex')
legend('1.0','1.1','1.2','1.3','1.4','$v^{-1}$','Interpreter','latex')

%filename = fullfile('../plots_l2m2', 'bbscalar_vs_t_all.pdf');
%filename = fullfile('../plots_l2m2', 'bbscalar_vs_t_all.png');
filename = fullfile('../plots_l2m2', 'bbscalar_vs_t_all.fig');
saveas(gcf,filename);