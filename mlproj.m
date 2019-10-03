%mlproj(n,m) = mlproj(mean 1, varience 1, mean 2, varience 2, samples 1, samples 2, dimension, smoothing parameter)
%
function mlproj(u1,v1,u2,v2,p1,p2,n,h)
    if nargin <7
        h=1;
    end
    r1=u1+v1.*randn(p1,n);
    r2=u2+v2.*randn(p2,n);
    X=[r1 ; r2 ];%use randn
    Avg=(sum(sum(X)))/(size(X,1)*size(X,2));
    K=(Avg-X)/h;
    f=K/((p1+p2)*(h^(n)));
    tmp=sortrows(f)
    
end 