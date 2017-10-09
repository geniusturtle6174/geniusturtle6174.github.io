function [Q R] = givensRotation(A)

[m n] = size(A);
Q = eye(m);
R = A;
if(m==n)
    k = n - 1;
elseif(m>n)
    k = n;
else
    k = m-1;
end

for j = 1:k
    for i = j+1:m
        J = givens(R(j,j), R(i,j));
        R([j i],:) = J*R([j i],:);
        Q([j i],:) = J*Q([j i],:);
    end
end
Q = Q';
