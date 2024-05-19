addpath('../old_data_l2m2/loc13')
infield_data_horizon = load('Psi0_TimeDAT_0.dat');
infield_data_finiter = load('Psi0_TimeDAT_4.dat');
outfield_data_horizon = load('Psi4_TimeDAT_0.dat');
outfield_data_finiter = load('Psi4_TimeDAT_4.dat');

% psi0-- at horizon
time_infield_horizon = infield_data_horizon(1:51000,1);
real_infield_horizon = infield_data_horizon(1:51000,2);
imag_infield_horizon = infield_data_horizon(1:51000,3);

% psi4-- at horizon
time_outfield_horizon = outfield_data_horizon(1:51000,1);
real_outfield_horizon = outfield_data_horizon(1:51000,2);
imag_outfield_horizon = outfield_data_horizon(1:51000,3);

% psi0-- at finite r
time_infield_finiter = infield_data_finiter(1:51000,1);
real_infield_finiter = infield_data_finiter(1:51000,2);
imag_infield_finiter = infield_data_finiter(1:51000,3);

% psi4-- at finite r
time_outfield_finiter = outfield_data_finiter(1:51000,1);
real_outfield_finiter = outfield_data_finiter(1:51000,2);
imag_outfield_finiter = outfield_data_finiter(1:51000,3);

rmpath('../old_data_l2m2/loc13')

% Plot at horizon

Psi0_horizon = real_infield_horizon + 1i.*imag_infield_horizon;
Psi4_horizon = real_outfield_horizon + 1i.*imag_outfield_horizon;

fig1 = figure();

plot(log10(time_infield_horizon),log10(abs(Psi0_horizon)),'-r','LineWidth',2)
hold on
plot(log10(time_infield_horizon),-2.5*log10(time_infield_horizon),'--r','LineWidth',2)
plot(log10(time_outfield_horizon),log10(abs(Psi4_horizon)),'-g','LineWidth',2)
plot(log10(time_outfield_horizon),1.5*log10(time_outfield_horizon),'--g','LineWidth',2)
hold off
xlabel('$\log_{10}\left(\frac{v}{M}\right)$','Interpreter','latex')
ylabel('Perturbation','Interpreter','latex')
xlim([1,3.5])
legend('|\psi_0|','\upsilon^{-2.5}','|\psi_4|','\upsilon^{1.5}')

%filename = fullfile('../plots_l2m2', 'falloff_horizon.pdf');
%filename = fullfile('../plots_l2m2', 'falloff_horizon.png');
filename = fullfile('../plots_l2m2', 'falloff_horizon.fig');
saveas(fig1,filename);

% Plot at finite r

fig2 = figure();

Psi0_finiter = real_infield_finiter + 1i.*imag_infield_finiter;
Psi4_finiter = real_outfield_finiter + 1i.*imag_outfield_finiter;

plot(log10(time_infield_finiter),log10(abs(Psi0_finiter)),'-r','LineWidth',2)
hold on
plot(log10(time_infield_finiter),-1.0*log10(time_infield_finiter),'-.r','LineWidth',2)
plot(log10(time_outfield_finiter),log10(abs(Psi4_finiter)),'-g','LineWidth',2)
plot(log10(time_outfield_finiter),-1.0*log10(time_outfield_finiter)+2,'-.g','LineWidth',2)
hold off
xlabel('$\log_{10}\left(\frac{t}{M}\right)$','Interpreter','latex')
ylabel('Perturbation','Interpreter','latex')
xlim([1,3.5])
legend('|\psi_0|','t^{-1}','|\psi_4|','t^{-1}')

%filename = fullfile('../plots_l2m2', 'falloff_finite_r.pdf');
%filename = fullfile('../plots_l2m2', 'falloff_finite_r.png');
filename = fullfile('../plots_l2m2', 'falloff_finite_r.fig');
saveas(fig2,filename);
