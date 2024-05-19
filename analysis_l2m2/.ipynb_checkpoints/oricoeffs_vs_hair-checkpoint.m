% Before running this file, the two files namely "hair_vs_t.m" and "oricoeffs_vs_r.m" have to be run. 
% Running those files will produce variables that are used in the computation below.

% average over time in lines below
oricoeff_10 = oricoeff_1400_10;
oricoeff_11 = oricoeff_1400_11;
oricoeff_12 = oricoeff_1400_12;
oricoeff_13 = oricoeff_1400_13;
oricoeff_14 = oricoeff_1400_14;

% taking last point in space
oricoeff_array = [oricoeff_14(end),oricoeff_10(end),oricoeff_13(end),oricoeff_11(end),oricoeff_12(end)];

hair_array = [hair_14(end),hair_10(end),hair_13(end),hair_11(end),hair_12(end)];

Fit = polyfit(hair_array,oricoeff_array,1); % x = x data, y = y data, 1 = order of the polynomial i.e a straight line 
f = polyval(Fit,hair_array);
%scatter(hair_array,oricoeff_array,'filled')
%hold on
plot(hair_array,oricoeff_array,'o',hair_array,f,'-','LineWidth',2)
%plot(x,polyval(Fit,hair_array),'--')
%hold off
%plot(hair_array,oricoeff_array)
xlabel('$|\xi_{2,2}''|$','Interpreter','latex')
ylabel('$e^{\xi}_{2,2}$','Interpreter','latex')
%legend('', ,'' )

%filename = fullfile('plots', 'oricoeffs_vs_hair_line.pdf');
%filename = fullfile('plots', 'oricoeffs_vs_hair_scatter.pdf');
%filename = fullfile('plots', 'oricoeffs_vs_hair_scatter.png');
filename = fullfile('../plots_l2m2', 'oricoeffs_vs_hair_scatter.fig');
saveas(gcf,filename);

%TODO : 
%1) Each of the points have to be labelled by the center of the gaussian.