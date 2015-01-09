close all; clear all; clc

num_trials = 900;
font_size = 18;

num_contexts = 3;
num_pf_cells_per_context = 5;
num_pf_cells = num_contexts*num_pf_cells_per_context; 

%% AAA

load AAA/response.txt
load AAA/acc.txt
load AAA/predicted_feedback.txt
load AAA/dopamine.txt
load AAA/correlation.txt
load AAA/confidence.txt
load AAA/w_pf_tan.txt  

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';

acc_AAA = acc;
w_pf_tan_AAA = w_pf_tan';

%% ABA

load ABA/response.txt
load ABA/response_time.txt
load ABA/acc.txt
load ABA/predicted_feedback.txt
load ABA/dopamine.txt
load ABA/correlation.txt
load ABA/confidence.txt
load ABA/w_pf_tan.txt 

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

acc_ABA = acc;
w_pf_tan_ABA = w_pf_tan';

%% AAB

load AAB/response.txt
load AAB/response_time.txt
load AAB/acc.txt
load AAB/predicted_feedback.txt
load AAB/dopamine.txt
load AAB/correlation.txt
load AAB/confidence.txt
load AAB/w_pf_tan.txt

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

acc_AAB = acc;
w_pf_tan_AAB = w_pf_tan';

%% ABC

load ABC/response.txt
load ABC/response_time.txt
load ABC/acc.txt
load ABC/predicted_feedback.txt
load ABC/dopamine.txt
load ABC/correlation.txt
load ABC/confidence.txt
load ABC/w_pf_tan.txt  

w_pf_tan_A = w_pf_tan(:,1:num_pf_cells_per_context)';
w_pf_tan_B = w_pf_tan(:,num_pf_cells_per_context+1:2*num_pf_cells_per_context)';
w_pf_tan_C = w_pf_tan(:,2*num_pf_cells_per_context+1:3*num_pf_cells_per_context)';  

acc_ABC = acc;
w_pf_tan_ABC = w_pf_tan';

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

figure, hold
plot(1:36, acc_AAA_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('red'))
plot(1:36, acc_ABA_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('orange'))
plot(1:36, acc_AAB_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('green'))
plot(1:36, acc_ABC_blocked(1:36), '-', 'LineWidth', 2, 'color', rgb('blue'))
ciplot(acc_AAA_blocked(1:36)-stderr_AAA(1:36),acc_AAA_blocked(1:36)+stderr_AAA(1:36),1:36, rgb('red'))
ciplot(acc_ABA_blocked(1:36)-stderr_ABA(1:36),acc_ABA_blocked(1:36)+stderr_ABA(1:36),1:36, rgb('orange'))
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

figure,
subplot(2,2,1), hold
plot(mean(w_pf_tan_AAA(1:5,:)), 'LineWidth', 2, 'color', rgb('red'))
plot(mean(w_pf_tan_AAA(6:10,:)), 'LineWidth', 2, 'color', rgb('green'))
plot(mean(w_pf_tan_AAA(11:15,:)), 'LineWidth', 2, 'color', rgb('blue'))
title('AAA','fontsize',18)

subplot(2,2,2), hold
plot(mean(w_pf_tan_ABA(1:5,:)), 'LineWidth', 2, 'color', rgb('red'))
plot(mean(w_pf_tan_ABA(6:10,:)), 'LineWidth', 2, 'color', rgb('green'))
plot(mean(w_pf_tan_ABA(11:15,:)), 'LineWidth', 2, 'color', rgb('blue'))
title('ABA','fontsize',18)

subplot(2,2,3), hold
plot(mean(w_pf_tan_AAB(1:5,:)), 'LineWidth', 2, 'color', rgb('red'))
plot(mean(w_pf_tan_AAB(6:10,:)), 'LineWidth', 2, 'color', rgb('green'))
plot(mean(w_pf_tan_AAB(11:15,:)), 'LineWidth', 2, 'color', rgb('blue'))
title('AAB','fontsize',18)

subplot(2,2,4), hold
plot(mean(w_pf_tan_ABC(1:5,:)), 'LineWidth', 2, 'color', rgb('red'))
plot(mean(w_pf_tan_ABC(6:10,:)), 'LineWidth', 2, 'color', rgb('green'))
plot(mean(w_pf_tan_ABC(11:15,:)), 'LineWidth', 2, 'color', rgb('blue'))
title('ABC','fontsize',18)