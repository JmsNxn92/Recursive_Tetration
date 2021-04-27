function f = beta2(z,n)
    f=0;
    for i = 0:n-1
        f = exp(f)./(1+exp((n-i-z)./sqrt(1+z)));
    end
end