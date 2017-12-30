 % unit controller with bondary layer k
%

function M=adpunit(x,y)
k=0.1;
%0.1+10*exp(-1.5*t);

if  y*norm(x)>k
    M=x/norm(x);
else
    M=x*y/k;
end