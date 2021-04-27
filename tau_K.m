
function f = tau_K(z,l,n,k)
    if k == 1
        f = log(beta_function(z+1,l,n)) - beta_function(z,l,n);
        return
    end

    f = log(beta_function(z+1,l,n) + tau_K(z+1,l,n,k-1)) - beta_function(z,l,n);
end
