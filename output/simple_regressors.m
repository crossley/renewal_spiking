close all; clear all; clc;

load da_rpe.txt
load da_corr.txt

%% Define a simple hrf

T0 = 0; n = 4; lambda = 2;

t=0:1:30;

hrf = ((t-T0).^(n-1)).*exp(-(t-T0)/lambda)/((lambda^n)*factorial(n-1));

% figure, plot(t,hrf)

%% compare the predicted BOLD signals from our RPE models

da_rpe_bold = conv(da_rpe,hrf);
da_corr_bold = conv(da_corr,hrf);

corr([da_rpe_bold da_corr_bold])
corr([da_rpe_bold(301:600) da_corr_bold(301:600)])

mean_diff_rpe = mean(da_rpe(1:300)) - mean(da_rpe(301:600))
mean_diff_corr = mean(da_corr(1:300)) - mean(da_corr(301:600))

var_rpe = var(da_rpe(301:600))
var_corr = var(da_corr(301:600))

fontsize = 24;

figure, hold
plot(smooth(da_rpe,25),'-','linewidth',2,'color',[0.8 0.0 0.0])
plot(smooth(da_corr,25),'-','linewidth',2,'color',[0.0 0.0 0.8])
legend({'RPE Model','Contingency Method'},'fontsize',fontsize)
xlabel('Trial','fontsize',fontsize);
ylabel('Predicted Dopamine Relase','fontsize',fontsize);

figure, hold
plot(da_rpe_bold,'-','linewidth',2,'color',[0.8 0.0 0.0])
plot(da_corr_bold,'-','linewidth',2,'color',[0.0 0.0 0.8])
legend({'RPE Model','Contingency Method'},'fontsize',fontsize)
xlabel('Trial','fontsize',fontsize);
ylabel('Predicted BOLD','fontsize',fontsize);