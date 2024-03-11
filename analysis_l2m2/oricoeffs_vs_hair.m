% average over time in lines below
oricoeff_11 = oricoeff_1400_11;
oricoeff_12 = oricoeff_1400_12;
oricoeff_13 = oricoeff_1400_13;
oricoeff_14 = oricoeff_1400_14;

% taking last point in space
oricoeff_array = [oricoeff_14(end),oricoeff_13(end),oricoeff_11(end),oricoeff_12(end)];

hair_array = [hair_14(end),hair_13(end),hair_11(end),hair_12(end)];

Fit = polyfit(hair_array,oricoeff_array,1); % x = x data, y = y data, 1 = order of the polynomial i.e a straight line 
f = polyval(Fit,hair_array);
%scatter(hair_array,oricoeff_array,'filled')
%hold on
plot(hair_array,oricoeff_array,'o',hair_array,f,'-')
%plot(x,polyval(Fit,hair_array),'--')
%hold off
%plot(hair_array,oricoeff_array)
xlabel('$|\partial_{r}(\psi_{0}\psi_{4})|$','Interpreter','latex')
ylabel('$e^{\xi}_{2,2}$','Interpreter','latex')
%legend('', ,'' )

%filename = fullfile('plots', 'oricoeffs_vs_hair_line.pdf');
%filename = fullfile('plots', 'oricoeffs_vs_hair_scatter.pdf');
filename = fullfile('plots', 'oricoeffs_vs_hair_scatter.png');
saveas(gcf,filename);

%TODO : 
%1) Each of the points have to be labelled by the center of the gaussian.