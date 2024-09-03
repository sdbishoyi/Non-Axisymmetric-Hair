% This file generates data that would be fitted by using the curve 
% fitting toolbox to get the coefficients n,p,q.

% These values are then displayed in the paper as a table.
% We don't consider the first 5000 points to get rid of the squiggles
% aka quasi-normal modes.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc10')

infield_data = load('Psi0_TimeDAT_4.dat'); %-- data at fixed r*
outfield_data = load('Psi4_TimeDAT_4.dat');

time_infield = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);

rmpath('../old_data_l2m2/loc10')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

last = length(Psi0)
Psi0 = Psi0(1:last); % --> Resizing them since array sizes are different.
Psi4 = Psi4(1:last);

bbscalar_10 = Psi0.*Psi4;

f_10 = fit(log10(time_infield(6000:last)),log10(abs(bbscalar_10(6000:last))),'poly1')

%{
plot(log10(time_infield(5000:last)),log10(abs(bbscalar_10(5000:last))))
hold on
plot(log10(time_infield(5000:last)),-2.0.*log10(time_infield(5000:last)) + 2.17,'--')
hold off

%ylim([-2.5,0])
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc11 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc11')

infield_data = load('Psi0_TimeDAT_4.dat'); %-- data at fixed r*
outfield_data = load('Psi4_TimeDAT_4.dat');

time_infield = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);

rmpath('../old_data_l2m2/loc11')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar_11 = Psi0.*Psi4;

f_11 = fit(log10(time_infield(6000:end)),log10(abs(bbscalar_11(6000:end))),'poly1')

%{
plot(log10(time_infield(5000:end)),log10(abs(bbscalar_11(5000:end))))
hold on
plot(log10(time_infield(5000:end)),-2.0.*log10(time_infield(5000:end)) + 2.17,'--')
hold off

%ylim([-2.5,0])
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc12 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc12')

infield_data = load('Psi0_TimeDAT_4.dat'); %-- data at fixed r*
outfield_data = load('Psi4_TimeDAT_4.dat');

time_infield = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);

rmpath('../old_data_l2m2/loc12')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

bbscalar_12 = Psi0.*Psi4;

f_12 = fit(log10(time_infield(6000:end)),log10(abs(bbscalar_12(6000:end))),'poly1')

%{
plot(log10(time_infield(5000:end)),log10(abs(bbscalar_12(5000:end))))
hold on
plot(log10(time_infield(5000:end)),-2.0.*log10(time_infield(5000:end)) + 2.17,'--')
hold off

%ylim([-2.5,0])
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc13 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc13')

infield_data = load('Psi0_TimeDAT_4.dat'); %-- data at fixed r*
outfield_data = load('Psi4_TimeDAT_4.dat');

time_infield = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);

rmpath('../old_data_l2m2/loc13')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

last = 51300;
Psi0 = Psi0(1:last); % --> Resizing them since array sizes are different.
Psi4 = Psi4(1:last);

bbscalar_13 = Psi0.*Psi4;

f_13 = fit(log10(time_infield(6000:last)),log10(abs(bbscalar_13(6000:last))),'poly1')

%{
plot(log10(time_infield(5000:last)),log10(abs(bbscalar_13(5000:last))))
hold on
plot(log10(time_infield(5000:last)),-2.0.*log10(time_infield(5000:last)) + 2.17,'--')
hold off

%ylim([-2.5,0])
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% loc14 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('../old_data_l2m2/loc14')

infield_data = load('Psi0_TimeDAT_4.dat'); %-- data at fixed r*
outfield_data = load('Psi4_TimeDAT_4.dat');

time_infield = infield_data(:,1);
real_infield = infield_data(:,2);
imag_infield = infield_data(:,3);

time_outfield = outfield_data(:,1);
real_outfield = outfield_data(:,2);
imag_outfield = outfield_data(:,3);

rmpath('../old_data_l2m2/loc14')

Psi0 = real_infield + 1i.*imag_infield;
Psi4 = real_outfield + 1i.*imag_outfield;

last = 51300;
Psi0 = Psi0(1:last); % --> Resizing them since array sizes are different.
Psi4 = Psi4(1:last);

bbscalar_14 = Psi0.*Psi4;

f_14 = fit(log10(time_infield(6000:last)),log10(abs(bbscalar_14(6000:last))),'poly1')

%{
plot(log10(time_infield(5000:last)),log10(abs(bbscalar_14(5000:last))))
hold on
plot(log10(time_infield(5000:last)),-2.0.*log10(time_infield(5000:last)) + 2.17,'--')
hold off

%ylim([-2.5,0])
xlabel('log_{10}time')
ylabel('log_{10}|\psi_{0}\psi_{4}|')
%}

% filename = fullfile('../plots_l2m2', 'finding_n.png');
% saveas(gcf,filename);
