
[t,x]=ode45(@chua2,[0:0.01:400],randn(3,1));


plot3(x(:,1),x(:,2),x(:,3));
xlabel('x1')
ylabel('x2')
zlabel('x3')


view(45,45);

