% unit controller with bondary layer k
%

function M=unit(x)
k=0.1;

if  norm(x)>k
    M=x/norm(x);
else
    M=x/k;
end