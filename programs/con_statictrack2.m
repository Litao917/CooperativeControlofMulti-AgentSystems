% 
% consensus tracking with respect to a leader with bounded input.
% adaptive controller 
% sigma-modifications
%

function xdot=con_statictrack2(t,x)

xdot=zeros(14,1);

% A=[0 1; -1 2]; B=[0; 1];
% A0=[0 1; -1 0];

K=-[1.2983  3.3878];
% K2=-[0 2]; % state feedback gain for the leader
c1=10; c2=20;

M=[0 0 0 0 0 0 0; -2 6 -1 -1 -1 -1 0; 0 -1 3 -1 0 0 -1; 0 -1 -1 2 0 0 0; 0 -1 0 0 2 -1 0; 0 -1 0 0 -1 3 -1; 0  0 -1 0 0 -1 2];


% the leader +sin(x(1))
xdot(1) = x(2);
xdot(2) = -x(1);


% follower 1
xdot(3) = x(4);
xdot(4) = -x(3)+2*x(4)+c1*K*[x(3)-x(5)+x(3)-x(7)+x(3)-x(9)+x(3)-x(11)+x(3)-x(1); x(4)-x(6)+x(4)-x(8)+x(4)-x(10)+x(4)-x(12)+x(4)-x(2)]...
    +c2*unit(K*[x(3)-x(5)+x(3)-x(7)+x(3)-x(9)+x(3)-x(11)+x(3)-x(1); x(4)-x(6)+x(4)-x(8)+x(4)-x(10)+x(4)-x(12)+x(4)-x(2)]);

% follower 2
xdot(5) = x(6);
xdot(6) = -x(5)+2*x(6)+c1*K*[x(5)-x(3)+x(5)-x(7)+x(5)-x(13); x(6)-x(4)+x(6)-x(8)+x(6)-x(14)]...
    +c2*unit(K*[x(5)-x(3)+x(5)-x(7)+x(5)-x(13); x(6)-x(4)+x(6)-x(8)+x(6)-x(14)]);

% follower 3
xdot(7) = x(8);
xdot(8) = -x(7)+2*x(8)+c1*K*[x(7)-x(3)+x(7)-x(5); x(8)-x(4)+x(8)-x(6)]+c2*unit(K*[x(7)-x(3)+x(7)-x(5); x(8)-x(4)+x(8)-x(6)]);


% follower 4
xdot(9) = x(10);
xdot(10) = -x(9)+2*x(10)+c1*K*[x(9)-x(3)+x(9)-x(11); x(10)-x(4)+x(10)-x(12)]+c2*unit(K*[x(9)-x(3)+x(9)-x(11); x(10)-x(4)+x(10)-x(12)]);

% follower 5
xdot(11) = x(12);
xdot(12) = -x(11)+2*x(12)+c1*K*[x(11)-x(3)+x(11)-x(9)+x(11)-x(13); x(12)-x(4)+x(12)-x(10)+x(12)-x(14)]...
    +c2*unit(K*[x(11)-x(3)+x(11)-x(9)+x(11)-x(13); x(12)-x(4)+x(12)-x(10)+x(12)-x(14)]);

% follower 6
xdot(13) = x(14);
xdot(14) = -x(13)+2*x(14)+c1*K*[x(13)-x(5)+x(13)-x(11); x(14)-x(6)+x(14)-x(12)]+c2*unit(K*[x(13)-x(5)+x(13)-x(11); x(14)-x(6)+x(14)-x(12)]);

