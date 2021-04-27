function f = TET(z,n,k)
    if (-1<real(z)<=0)
        f=beta2(z,n) + tau2(z,n,k);
        return
    end
    
    f = exp(TET(z-1));
end
