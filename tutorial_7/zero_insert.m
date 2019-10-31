function yy = zero_insert(xx)
    [M,N] = size(xx);
    yy = zeros(4*M,4*N);
    yy(4:4:4*M,4:4:4*N) = xx;
end
