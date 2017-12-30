% unit controller with bondary layer k
% subject to uncertainties
%

function M=adpunitun(x,y)
k=0.1;

if  y*norm(x)>k
    M=y*x/norm(x);
else
    M=x*y^2/k;
end