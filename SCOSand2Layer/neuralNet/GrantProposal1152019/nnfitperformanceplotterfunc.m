function [fitresult, gof] = nnfitperformanceplotterfunc(testthiccness, testTarget, testError)
%CREATEFIT(TESTTHICCNESS,TESTTARGET,TESTERROR)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : testthiccness
%      Y Input : testTarget
%      Z Output: testError
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 15-Jan-2019 14:48:14


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( testthiccness, testTarget, testError );

% Set up fittype and options.
ft = 'biharmonicinterp';

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, [xData, yData], zData);
legend( h, 'fit', 'Db2 Estimation Error vs. Thickness, ratio', 'Location', 'NorthEast' );
% Label axes
xlabel Thickness
ylabel ratio
zlabel 'Db2 Estimation Error'
grid on
caxis([-20 20])
view( -117.5, 37.0 );


