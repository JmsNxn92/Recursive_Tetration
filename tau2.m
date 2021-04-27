function f = tau2(z,n,k)
    if k == 1
        f = log(beta2(z+1,n)) - beta2(z,n);
        return
    end

    f = log(beta2(z+1,n) + tau2(z+1,n,k-1)) - beta2(z,n);
end