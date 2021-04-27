function f = beta_function(z,l,n)
    f=0;
    for i = 0:n-1
        f = exp(f)./(1+exp(l*(n-i-z)));
    end
end