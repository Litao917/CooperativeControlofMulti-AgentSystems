%
clear all;

% x0=[randn(21,1); rand(12,1)];
x0=2*randn(33,1);

[t,y]=ode23(@con_sadptrackun,0:0.2:20,x0);

% figure(1)
% plot(t,y(:,4)-y(:,1),t,y(:,7)-y(:,1),t,y(:,10)-y(:,1),t,y(:,13)-y(:,1),t,y(:,16)-y(:,1),t,y(:,19)-y(:,1),...
%     t,y(:,5)-y(:,2),t,y(:,8)-y(:,2),t,y(:,11)-y(:,2),t,y(:,14)-y(:,2),t,y(:,17)-y(:,2),t,y(:,20)-y(:,2),'LineWidth',2);


figure(2)
plot(t,y(:,1),t,y(:,4),t,y(:,7),t,y(:,10),t,y(:,13),t,y(:,16),t,y(:,19),'LineWidth',2);

figure(3)
plot(t,y(:,2),t,y(:,5),t,y(:,8),t,y(:,11),t,y(:,14),t,y(:,17),t,y(:,20),'LineWidth',2);

figure(6)
plot(t,y(:,3),t,y(:,6),t,y(:,9),t,y(:,12),t,y(:,15),t,y(:,18),t,y(:,21),'LineWidth',2);

figure(4)
plot(t,y(:,22),t,y(:,24),t,y(:,26),t,y(:,28),t,y(:,30),t,y(:,32),'LineWidth',2);


figure(5)
plot(t,y(:,23),t,y(:,25),t,y(:,27),t,y(:,29),t,y(:,31),t,y(:,33),'LineWidth',2);
