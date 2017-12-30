
% to compute matrix $K$

clear all;

% ops = sdpsettings('solver','lmilab');
ops = sdpsettings('solver','sedumi');

% Create a stable matrix
m=2.5;
A=[0  1; 0  0]; B=[0 ; 1/m];

% Create symmetric matrix (full syntax)
P = sdpvar(2,2,'symmetric'); %'symmetric' can be omitted

% Add SETs for stability
%An alternative is to simply concatenate constraints
F = [P>0,
     A*P+P*A'-2*B*B'< 0];

% Find feasible solution, minimize trace(P)

solvesdp(F,[],ops);

% Extract numerical solution
K = -B'*inv(double(P))
Gamma = inv(double(P))*B*B'*inv(double(P))


%K=[-2 -4 -2];