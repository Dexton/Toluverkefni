function last = sym_newton(f, df, x0, tol)
    clear out
    syms x;
    MAX_ITER = 100;
    out(1) =x0-f(x0)/subs(df,x,x0);    
    for k=1:MAX_ITER-1
        out(k+1) = out(k) - f(out(k))/subs(df,x,out(k));
        last = out(k+1);
        if( abs(out(k+1)-out(k)) < tol )
            return 
        end
    end
end
