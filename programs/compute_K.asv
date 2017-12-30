%
% to compute matrix $K$

clear all;

% ops = sdpsettings('solver','lmilab');
ops = sdpsettings('solver','sedumi');

% Create a stable matrix
a=10; b=18; m1=-3/4;
A=[-a*(m1+1) a 0;1  -1  1; 0  -b 0]; B=[1; 0 ; 0];

% Create symmetric matrix (full syntax)
P = sdpvar(3,3,'symmetric'); %'symmetric' can be omitted

% Add SETs for stability
%An alternative is to simply concatenate constraints
F = [P>0,
     A*P+P*A'-2*B*B'< 0];

% Find feasible solution, minimize trace(P)

solvesdp(F,[],ops);

% Extract numerical solution
double(P)
K = -B'*inv(double(P))
Gamma = inv(double(P))*B*B'*inv(double(P))


%K=[-2 -4 -2];