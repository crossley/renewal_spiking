close all
clear all
clc

%%

% % % load AAB/vis.txt
% % % load AAB/w_vis_msn_A.txt
% % % load AAB/w_vis_msn_B.txt
% % % load AAB/w_vis_msn_C.txt
% % % load AAB/w_vis_msn_D.txt
% % % 
% % % trial = 200;
% % % dim = 200;
% % % 
% % % vis = vis(trial,:);
% % % vis = reshape(vis, dim, dim);
% % % 
% % % w_vis_msn_A = w_vis_msn_A(trial,:);
% % % w_vis_msn_B = w_vis_msn_B(trial,:);
% % % w_vis_msn_C = w_vis_msn_C(trial,:);
% % % w_vis_msn_D = w_vis_msn_D(trial,:);
% % % 
% % % w_vis_msn_A = reshape(w_vis_msn_A, dim, dim);
% % % w_vis_msn_B = reshape(w_vis_msn_B, dim, dim);
% % % w_vis_msn_C = reshape(w_vis_msn_C, dim, dim);
% % % w_vis_msn_D = reshape(w_vis_msn_D, dim, dim);
% % % 
% % % figure
% % % subplot(2,2,1)
% % % surf(w_vis_msn_A)
% % % axis([0 dim 0 dim 0 1])
% % % 
% % % subplot(2,2,2)
% % % surf(w_vis_msn_B)
% % % axis([0 dim 0 dim 0 1])
% % % 
% % % subplot(2,2,3)
% % % surf(w_vis_msn_C)
% % % axis([0 dim 0 dim 0 1])
% % % 
% % % subplot(2,2,4)
% % % surf(w_vis_msn_D)
% % % axis([0 dim 0 dim 0 1])
% % % 
% % % % figure
% % % % surf(vis);

%%

% % % load AAB/pf.txt
% % % 
% % % load AAB/tan_output.txt
% % % load AAB/msn_output_A.txt
% % % load AAB/msn_output_B.txt
% % % load AAB/msn_output_C.txt
% % % load AAB/msn_output_D.txt
% % % load AAB/mot_output_A.txt
% % % load AAB/mot_output_B.txt
% % % load AAB/mot_output_C.txt
% % % load AAB/mot_output_D.txt
% % % 
% % % load AAB/tan_v.txt
% % % load AAB/msn_v_A.txt
% % % load AAB/msn_v_B.txt
% % % load AAB/msn_v_C.txt
% % % load AAB/msn_v_D.txt
% % % load AAB/mot_v_A.txt
% % % load AAB/mot_v_B.txt
% % % load AAB/mot_v_C.txt
% % % load AAB/mot_v_D.txt

%%

% % % trial = 1;
% % % 
% % % num_contexts = 3;
% % % num_pf_cells_per_context = 4;
% % % num_pf_cells = num_contexts*num_pf_cells_per_context;
% % % 
% % % pf_A = pf(:,1:num_pf_cells_per_context:end)';
% % % pf_B = pf(:,2:num_pf_cells_per_context:end)';
% % % pf_C = pf(:,3:num_pf_cells_per_context:end)';
% % % 
% % % t = 1:3000;
% % % 
% % % figure
% % % subplot(2,4,1), plotyy(t, msn_v_A(trial,:), t, msn_output_A(trial,:))
% % % subplot(2,4,2),plotyy(t, msn_v_B(trial,:), t, msn_output_B(trial,:))
% % % subplot(2,4,3),plotyy(t, msn_v_C(trial,:), t, msn_output_C(trial,:))
% % % subplot(2,4,4),plotyy(t, msn_v_D(trial,:), t, msn_output_D(trial,:))
% % % 
% % % subplot(2,4,5),plotyy(t, mot_v_A(trial,:), t, mot_output_A(trial,:))
% % % subplot(2,4,6),plotyy(t, mot_v_B(trial,:), t, mot_output_B(trial,:))
% % % subplot(2,4,7),plotyy(t, mot_v_C(trial,:), t, mot_output_C(trial,:))
% % % subplot(2,4,8),plotyy(t, mot_v_D(trial,:), t, mot_output_D(trial,:))
% % % 
% % % figure
% % plotyy(t,tan_v(trial,:),t,tan_output(trial,:))

%% AAA

load AAA/response.txt
load AAA/acc.txt
load AAA/predicted_feedback.txt
load AAA/dopamine.txt
load AAA/correlation.txt
load AAA/confidence.txt
load AAA/w_pf_tan.txt

num_trials = 900;
font_size = 18;

num_contexts = 3;
num_pf_cells_per_context = 5;
num_pf_cells = num_contexts*num_pf_cells_per_context;

% w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context:end)';
% w_pf_tan_B = w_pf_tan(:,2:num_pf_cells_per_context:end)';
% w_pf_tan_C = w_pf_tan(:,3:num_pf_cells_per_context:end)';   

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

% figure
% 
% subplot(5,1,1), plot(predicted_feedback, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Predicted Feedback', 'fontsize', font_size)
% axis([0 num_trials -1 1])
% 
% subplot(5,1,2), plot(correlation, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Contingency', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,3), plot(dopamine, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Dopamine Level', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,4), plot(smooth(response_time,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('RT', 'fontsize', font_size)
% axis([0 num_trials 0 3000])
% 
% subplot(5,1,5), plot(smooth(acc,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Proportion Correct', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% figure,hold 
% plot(mean(w_pf_tan_A),'-b', 'linewidth',2)
% plot(mean(w_pf_tan_B),'-g', 'linewidth',2)
% plot(mean(w_pf_tan_C),'-r', 'linewidth',2)
% axis([0 num_trials 0 1])

acc_AAA = acc;

%% ABA

load ABA/response.txt
load ABA/response_time.txt
load ABA/acc.txt
load ABA/predicted_feedback.txt
load ABA/dopamine.txt
load ABA/correlation.txt
load ABA/confidence.txt
load ABA/w_pf_tan.txt

num_trials = 900;
font_size = 18;

num_contexts = 3;
num_pf_cells_per_context = 5;
num_pf_cells = num_contexts*num_pf_cells_per_context;

% w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context:end)';
% w_pf_tan_B = w_pf_tan(:,2:num_pf_cells_per_context:end)';
% w_pf_tan_C = w_pf_tan(:,3:num_pf_cells_per_context:end)';   

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

% figure
% 
% subplot(5,1,1), plot(predicted_feedback, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Predicted Feedback', 'fontsize', font_size)
% axis([0 num_trials -1 1])
% 
% subplot(5,1,2), plot(correlation, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Contingency', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,3), plot(dopamine, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Dopamine Level', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,4), plot(smooth(response_time,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('RT', 'fontsize', font_size)
% axis([0 num_trials 0 3000])
% 
% subplot(5,1,5), plot(smooth(acc,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Proportion Correct', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% figure,hold 
% plot(mean(w_pf_tan_A),'-b', 'linewidth',2)
% plot(mean(w_pf_tan_B),'-g', 'linewidth',2)
% plot(mean(w_pf_tan_C),'-r', 'linewidth',2)
% axis([0 num_trials 0 1])

acc_ABA = acc;

%% AAB

load AAB/response.txt
load AAB/response_time.txt
load AAB/acc.txt
load AAB/predicted_feedback.txt
load AAB/dopamine.txt
load AAB/correlation.txt
load AAB/confidence.txt
load AAB/w_pf_tan.txt

num_trials = 900;
font_size = 18;

num_contexts = 3;
num_pf_cells_per_context = 5;
num_pf_cells = num_contexts*num_pf_cells_per_context;

% w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context:end)';
% w_pf_tan_B = w_pf_tan(:,2:num_pf_cells_per_context:end)';
% w_pf_tan_C = w_pf_tan(:,3:num_pf_cells_per_context:end)';   

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

% figure
% 
% subplot(5,1,1), plot(predicted_feedback, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Predicted Feedback', 'fontsize', font_size)
% axis([0 num_trials -1 1])
% 
% subplot(5,1,2), plot(correlation, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Contingency', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,3), plot(dopamine, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Dopamine Level', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,4), plot(smooth(response_time,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('RT', 'fontsize', font_size)
% axis([0 num_trials 0 3000])
% 
% subplot(5,1,5), plot(smooth(acc,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Proportion Correct', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% figure,hold 
% plot(mean(w_pf_tan_A),'-b', 'linewidth',2)
% plot(mean(w_pf_tan_B),'-g', 'linewidth',2)
% plot(mean(w_pf_tan_C),'-r', 'linewidth',2)
% axis([0 num_trials 0 1])

acc_AAB = acc;

%% ABC

load ABC/response.txt
load ABC/response_time.txt
load ABC/acc.txt
load ABC/predicted_feedback.txt
load ABC/dopamine.txt
load ABC/correlation.txt
load ABC/confidence.txt
load ABC/w_pf_tan.txt

num_trials = 900;
font_size = 18;

num_contexts = 3;
num_pf_cells_per_context = 5;
num_pf_cells = num_contexts*num_pf_cells_per_context;

% w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context:end)';
% w_pf_tan_B = w_pf_tan(:,2:num_pf_cells_per_context:end)';
% w_pf_tan_C = w_pf_tan(:,3:num_pf_cells_per_context:end)';   

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

% figure
% 
% subplot(5,1,1), plot(predicted_feedback, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Predicted Feedback', 'fontsize', font_size)
% axis([0 num_trials -1 1])
% 
% subplot(5,1,2), plot(correlation, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Contingency', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,3), plot(dopamine, 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Dopamine Level', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% subplot(5,1,4), plot(smooth(response_time,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('RT', 'fontsize', font_size)
% axis([0 num_trials 0 3000])
% 
% subplot(5,1,5), plot(smooth(acc,25), 'linewidth', 2)
% xlabel('trial', 'fontsize', font_size)
% ylabel('Proportion Correct', 'fontsize', font_size)
% axis([0 num_trials 0 1])
% 
% figure,hold 
% plot(mean(w_pf_tan_A),'-b', 'linewidth',2)
% plot(mean(w_pf_tan_B),'-g', 'linewidth',2)
% plot(mean(w_pf_tan_C),'-r', 'linewidth',2)
% axis([0 num_trials 0 1])

acc_ABC = acc;

%% block processing

acc_AAA_blocked = mean(reshape(acc_AAA,25,36));
acc_ABA_blocked = mean(reshape(acc_ABA,25,36));
acc_AAB_blocked = mean(reshape(acc_AAB,25,36)); 
acc_ABC_blocked = mean(reshape(acc_ABC,25,36));

stderr_AAA = std(reshape(acc_AAA,25,36))/sqrt(25);
stderr_ABA = std(reshape(acc_ABA,25,36))/sqrt(25);
stderr_AAB = std(reshape(acc_AAB,25,36))/sqrt(25);  
stderr_ABC = std(reshape(acc_ABC,25,36))/sqrt(25);

%% combined figures

% figure, hold
% plot(smooth(acc_ABA,25), 'linewidth', 2, 'color', [1.0 0.0 0.0])
% plot(smooth(acc_AAB,25), 'linewidth', 2, 'color', [0.0 1.0 0.0])
% plot(smooth(acc_ABC,25), 'linewidth', 2, 'color', [0.0 0.0 1.0])
% xlabel('trial', 'fontsize', font_size)
% ylabel('Proportion Correct', 'fontsize', font_size)
% axis([0 37 0 1])
% axis square
% legend({'ABA','AAB','ABC'}, 'fontsize', 18);

figure, hold
plot(1:36, acc_ABA_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('red'))
plot(1:36, acc_AAA_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('orange'))
plot(1:36, acc_AAB_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('green'))
plot(1:36, acc_ABC_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
ciplot(acc_ABA_blocked(1:36)-stderr_ABA(1:36),acc_ABA_blocked(1:36)+stderr_ABA(1:36),1:36, rgb('red'))
ciplot(acc_AAA_blocked(1:36)-stderr_AAA(1:36),acc_AAA_blocked(1:36)+stderr_AAA(1:36),1:36, rgb('orange'))
ciplot(acc_AAB_blocked(1:36)-stderr_AAB(1:36),acc_AAB_blocked(1:36)+stderr_AAB(1:36),1:36, rgb('green'))
ciplot(acc_ABC_blocked(1:36)-stderr_ABC(1:36),acc_ABC_blocked(1:36)+stderr_ABC(1:36),1:36, rgb('blue'))
camlight; lighting none; 
alpha(.5)
axis([0 36+1 0.0 1])
axis square
set(gca,'XTick',2:2:36, 'fontsize', 10, 'fontweight', 'b')
xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
legend({'AAA','ABA','AAB','ABC'}, 'fontsize', 18, 'Location', 'SouthEast');
legend boxoff

% % % %% overlay
% % % 
% % % figure, hold
% % % plot(1:12, acc_AAA_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_AAA_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_AAA_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_AAA_blocked(1:12)-stderr_AAA(1:12),acc_AAA_blocked(1:12)+stderr_AAA(1:12),1:12, rgb('red'))
% % % ciplot(acc_AAA_blocked(13:24)-stderr_AAA(13:24),acc_AAA_blocked(13:24)+stderr_AAA(13:24),1:12, rgb('green'))
% % % ciplot(acc_AAA_blocked(25:36)-stderr_AAA(25:36),acc_AAA_blocked(25:36)+stderr_AAA(25:36),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('AAA', 'fontsize', 18)
% % % 
% % % figure, hold
% % % plot(1:12, acc_ABA_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_ABA_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_ABA_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_ABA_blocked(1:12)-stderr_ABA(1:12),acc_ABA_blocked(1:12)+stderr_ABA(1:12),1:12, rgb('red'))
% % % ciplot(acc_ABA_blocked(13:24)-stderr_ABA(13:24),acc_ABA_blocked(13:24)+stderr_ABA(13:24),1:12, rgb('green'))
% % % ciplot(acc_ABA_blocked(25:36)-stderr_ABA(25:36),acc_ABA_blocked(25:36)+stderr_ABA(25:36),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('ABA', 'fontsize', 18)
% % % 
% % % figure, hold
% % % plot(1:12, acc_AAB_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_AAB_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_AAB_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_AAB_blocked(1:12)-stderr_AAB(1:12),acc_AAB_blocked(1:12)+stderr_AAB(1:12),1:12, rgb('red'))
% % % ciplot(acc_AAB_blocked(13:24)-stderr_AAB(13:24),acc_AAB_blocked(13:24)+stderr_AAB(13:24),1:12, rgb('green'))
% % % ciplot(acc_AAB_blocked(25:36)-stderr_AAB(25:36),acc_AAB_blocked(25:36)+stderr_AAB(25:36),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('AAB', 'fontsize', 18)
% % % 
% % % figure, hold
% % % plot(1:12, acc_ABC_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_ABC_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_ABC_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_ABC_blocked(1:12)-stderr_ABC(1:12),acc_ABC_blocked(1:12)+stderr_ABC(1:12),1:12, rgb('red'))
% % % ciplot(acc_ABC_blocked(13:24)-stderr_ABC(13:24),acc_ABC_blocked(13:24)+stderr_ABC(13:24),1:12, rgb('green'))
% % % ciplot(acc_ABC_blocked(25:36)-stderr_ABC(25:36),acc_ABC_blocked(25:36)+stderr_ABC(25:36),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('ABC', 'fontsize', 18)

% figure, hold
% plot(1:300, smooth(acc_ABA(1:300),25), '-', 'LineWidth', 2, 'color', [1.0 0.0 0.0])
% plot(1:300, smooth(acc_ABA(301:600),25), '-', 'LineWidth', 2, 'color', [0.0 1.0 0.0])
% plot(1:300, smooth(acc_ABA(601:900),25), '-', 'LineWidth', 2, 'color', [0.0 0.0 1.0])
% camlight; lighting flat; 
% alpha(.5)
% axis([0 300+1 0.0 1])
% axis square
% set(gca,'XTick',1:20:300, 'fontsize', 10, 'fontweight', 'b')
% xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18);
% title('ABA', 'fontsize', 18)
% 
% figure, hold
% plot(1:300, smooth(acc_AAB(1:300),25), '-', 'LineWidth', 2, 'color', [1.0 0.0 0.0])
% plot(1:300, smooth(acc_AAB(301:600),25), '-', 'LineWidth', 2, 'color', [0.0 1.0 0.0])
% plot(1:300, smooth(acc_AAB(601:900),25), '-', 'LineWidth', 2, 'color', [0.0 0.0 1.0])
% camlight; lighting flat; 
% alpha(.5)
% axis([0 300+1 0.0 1])
% axis square
% set(gca,'XTick',1:20:300, 'fontsize', 10, 'fontweight', 'b')
% xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18);
% title('AAB', 'fontsize', 18)
% 
% figure, hold
% plot(1:300, smooth(acc_ABC(1:300),25), '-', 'LineWidth', 2, 'color', [1.0 0.0 0.0])
% plot(1:300, smooth(acc_ABC(301:600),25), '-', 'LineWidth', 2, 'color', [0.0 1.0 0.0])
% plot(1:300, smooth(acc_ABC(601:900),25), '-', 'LineWidth', 2, 'color', [0.0 0.0 1.0])
% camlight; lighting flat; 
% alpha(.5)
% axis([0 300+1 0.0 1])
% axis square
% set(gca,'XTick',1:20:300, 'fontsize', 10, 'fontweight', 'b')
% xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% legend({'Acquisition', 'Extinction', 'Reacquisition'}, 'fontsize', 18);
% title('ABC', 'fontsize', 18)

% % % %% between condition acquisition
% % % 
% % % figure, hold
% % % plot(1:12, acc_AAA_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_ABA_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('orange'))
% % % plot(1:12, acc_AAB_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_ABC_blocked(1:12), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_AAA_blocked(1:12)-stderr_AAA(1:12),acc_AAA_blocked(1:12)+stderr_AAA(1:12),1:12, rgb('red'))
% % % ciplot(acc_ABA_blocked(1:12)-stderr_ABA(1:12),acc_ABA_blocked(1:12)+stderr_ABA(1:12),1:12, rgb('orange'))
% % % ciplot(acc_AAB_blocked(1:12)-stderr_AAB(1:12),acc_AAB_blocked(1:12)+stderr_AAB(1:12),1:12, rgb('green'))
% % % ciplot(acc_ABC_blocked(1:12)-stderr_ABC(1:12),acc_ABC_blocked(1:12)+stderr_ABC(1:12),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'AAA Reacquisition', 'ABA Reacquisition', 'AAB Reacquisition', 'ABC Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('Between Condition Acquisition', 'fontsize', 18)
% % % 
% % % %% between condition extinction
% % % 
% % % figure, hold
% % % plot(1:12, acc_AAA_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_ABA_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('orange'))
% % % plot(1:12, acc_AAB_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_ABC_blocked(13:24), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acc_AAA_blocked(13:24)-stderr_AAA(13:24),acc_AAA_blocked(13:24)+stderr_AAA(13:24),1:12, rgb('red'))
% % % ciplot(acc_ABA_blocked(13:24)-stderr_ABA(13:24),acc_ABA_blocked(13:24)+stderr_ABA(13:24),1:12, rgb('orange'))
% % % ciplot(acc_AAB_blocked(13:24)-stderr_AAB(13:24),acc_AAB_blocked(13:24)+stderr_AAB(13:24),1:12, rgb('green'))
% % % ciplot(acc_ABC_blocked(13:24)-stderr_ABC(13:24),acc_ABC_blocked(13:24)+stderr_ABC(13:24),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'AAA Reacquisition', 'ABA Reacquisition', 'AAB Reacquisition', 'ABC Reacquisition'}, 'fontsize', 18, 'Location', 'NorthEast');
% % % legend boxoff
% % % title('Between Condition Extinction', 'fontsize', 18)
% % % 
% % % %% between condition reacquisition
% % % 
% % % acquisition_mean = mean([acc_AAA_blocked(1:12); acc_ABA_blocked(1:12); acc_AAB_blocked(1:12); acc_ABC_blocked(1:12);]);
% % % acquisition_stderr = mean([stderr_AAA(1:12); stderr_ABA(1:12); stderr_AAB(1:12); stderr_ABC(1:12);]);
% % % 
% % % figure, hold
% % % plot(1:12, acquisition_mean, '-', 'LineWidth', 2, 'color', rgb('black'))
% % % plot(1:12, acc_AAA_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('red'))
% % % plot(1:12, acc_ABA_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('orange'))
% % % plot(1:12, acc_AAB_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('green'))
% % % plot(1:12, acc_ABC_blocked(25:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
% % % ciplot(acquisition_mean(1:12)-acquisition_stderr(1:12),acquisition_mean(1:12)+acquisition_stderr(1:12),1:12, rgb('black'))
% % % ciplot(acc_AAA_blocked(25:36)-stderr_AAA(25:36),acc_AAA_blocked(25:36)+stderr_AAA(25:36),1:12, rgb('red'))
% % % ciplot(acc_ABA_blocked(25:36)-stderr_ABA(25:36),acc_ABA_blocked(25:36)+stderr_ABA(25:36),1:12, rgb('orange'))
% % % ciplot(acc_AAB_blocked(25:36)-stderr_AAB(25:36),acc_AAB_blocked(25:36)+stderr_AAB(25:36),1:12, rgb('green'))
% % % ciplot(acc_ABC_blocked(25:36)-stderr_ABC(25:36),acc_ABC_blocked(25:36)+stderr_ABC(25:36),1:12, rgb('blue'))
% % % camlight; lighting none; 
% % % alpha(.5)
% % % axis([0 12+1 0.0 1])
% % % axis square
% % % set(gca,'XTick',1:12, 'fontsize', 10, 'fontweight', 'b')
% % % xlabel('Block', 'fontsize', 18, 'fontweight', 'b')
% % % ylabel('Proportion Correct', 'fontsize', 18, 'fontweight', 'b')
% % % legend({'Pooled Acquisition', 'AAA Reacquisition', 'ABA Reacquisition', 'AAB Reacquisition', 'ABC Reacquisition'}, 'fontsize', 18, 'Location', 'SouthEast');
% % % legend boxoff
% % % title('Between Condition Reacquisition', 'fontsize', 18)