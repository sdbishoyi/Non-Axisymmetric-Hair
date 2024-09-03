% Before running this file, the two files namely "hair_vs_t.m" and "oricoeffs_vs_r.m" have to be run. 
% Running those files will produce variables that are used in the computation below.

hair_vs_t
oricoeffs_vs_r

point = 640; %--> r(point) is the r value where we are extracting the Ori-coefficient

% average over time in lines below
oricoeff_10 = oricoeff_1400_10;
oricoeff_11 = oricoeff_1400_11;
oricoeff_12 = oricoeff_1400_12;
oricoeff_13 = oricoeff_1400_13;
oricoeff_14 = oricoeff_1400_14;

% taking last point in space

oricoeff_array = [oricoeff_14(point),oricoeff_10(point),oricoeff_13(point),oricoeff_11(point),oricoeff_12(point)];
hair_array = [hair_14(end),hair_10(end),hair_13(end),hair_11(end),hair_12(end)];
labels = [1.4,1.0,1.3,1.1,1.2];

[Fit,gof] = polyfit(hair_array,oricoeff_array,1); % x = x data, y = y data, 1 = order of the polynomial i.e a straight line 
[f,delta] = polyval(Fit,hair_array,gof); 

% calculating errors in the slope and intercepts

residuals = oricoeff_array - (Fit(1).*hair_array + Fit(2));
n = length(hair_array);
x_mean = mean(hair_array);
x_var = sum((hair_array - x_mean).^2);
%{
residuals_std = std(residuals);
m_std_error = residuals_std/sqrt(x_var*(n-1));
c_std_error = residuals_std*sqrt(sum(hair_array.^2)/(n*x_var));
%}

m_std_error = sqrt(sum(residuals.^2)/((n-2)*x_var));
c_std_error = 

%here we plot
plot(hair_array,oricoeff_array,'o',hair_array,f,'-','LineWidth',2)

for i = 1:length(hair_array)
    text(hair_array(i), oricoeff_array(i), sprintf('%1.1f',labels(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end

slope = Fit(1);
intercept = Fit(2);
%equation = sprintf('$y \\approx (%1.4f \\pm %1.5f) x+ %1.4f \\pm %1.5f $',slope,m_std_error,intercept,c_std_error);
equation = sprintf('$slope \\approx %1.6f \\pm %1.8f$',slope,m_std_error);

% position of the text on the plot
xpos = mean(hair_array(2:3));
ypos = mean(oricoeff_array(1));
text(xpos, ypos, equation, 'FontSize', 16, 'BackgroundColor', 'w','Interpreter','latex');

xlabel('$|\xi_{2,2}''|$','Interpreter','latex')
ylabel('$e^{\xi}_{2,2}$','Interpreter','latex')
%legend('', ,'' )

%filename = fullfile('../plots_l2m2', 'oricoeffs_vs_hair_scatter.pdf');
%filename = fullfile('../plots_l2m2', 'oricoeffs_vs_hair_scatter.png');
filename = fullfile('../plots_l2m2', 'oricoeffs_vs_hair_scatter.fig');
saveas(gcf,filename);

%TODO : 
%1) Each of the points have to be labelled by the center of the gaussian.