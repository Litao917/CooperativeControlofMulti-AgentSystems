% x0=[randn(21,1); rand(12,1)];
x0=2*randn(24,1);
% load x0.mat

[t,y]=ode23(@con_consensusms,0:0.1:40,x0);

% Y=[y(:,1);y(:,2);y(:,3);y(:,4);y(:,5);y(:,6);y(:,7);y(:,8);y(:,9);y(:,10);y(:,11);y(:,12)];
% M=Y'*(kron(eye(6)-ones(6,1)*ones(1,6)/6,eye(2)))*Y;
% 
% figure(2)
% plot(t,M,'LineWidth',2);

figure(2)
plot(t,y(:,1),t,y(:,3),t,y(:,5),t,y(:,7),t,y(:,9),t,y(:,11),'LineWidth',2);
% plot(t,y(:,3)-y(:,1),t,y(:,5)-y(:,1),t,y(:,7)-y(:,1),t,y(:,9)-y(:,1),t,y(:,11)-y(:,1),'LineWidth',2);
% plot(t,y(:,4)-y(:,2),t,y(:,6)-y(:,2),t,y(:,8)-y(:,2),t,y(:,10)-y(:,2),t,y(:,12)-y(:,2),'LineWidth',2);

figure(3)
plot(t,y(:,2),t,y(:,4),t,y(:,6),t,y(:,8),t,y(:,10),t,y(:,12),'LineWidth',2);

figure(4)
plot(t,y(:,13),t,y(:,15),t,y(:,17),t,y(:,19),t,y(:,21),t,y(:,23),'LineWidth',2);
axes('Position', [0.45, 0.55, 0.42, 0.35]) % 四个参数取值范围为[0,1]，[left, bottom, wide, high]，表示在附图在主图中的位置以及大小（与主图的比例）。
plot(t,y(:,13),t,y(:,15),t,y(:,17),t,y(:,19),t,y(:,21),t,y(:,23),'LineWidth',2); % 附图
axis([35, 40, 0, 0.05]) ; %附图中显示t=[20,30]段，纵坐标为[-0.02, 0.02]

figure(5)
plot(t,y(:,14),t,y(:,16),t,y(:,18),t,y(:,20),t,y(:,22),t,y(:,24),'LineWidth',2);
axes('Position', [0.45, 0.55, 0.42, 0.35]) % 四个参数取值范围为[0,1]，[left, bottom, wide, high]，表示在附图在主图中的位置以及大小（与主图的比例）。
plot(t,y(:,14),t,y(:,16),t,y(:,18),t,y(:,20),t,y(:,22),t,y(:,24),'LineWidth',2);
axis([35, 40, 0, 0.05]) ; %附图中显示t=[20,30]段，纵坐标为[-0.02, 0.02]