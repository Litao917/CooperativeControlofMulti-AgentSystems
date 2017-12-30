%Chua's ocsillator
%

function x1=chua2(t,x)%к╚ня╬М


x1=zeros(3,1);

a=10; b=18; m1=-3/4; m2=-4/3;

x1(1)=a*(-x(1)+x(2)-m1*x(1)-(m2-m1)/2*(abs(x(1)+1)-abs(x(1)-1)));
x1(2)=x(1)-x(2)+x(3);
x1(3)=-b*x(2);