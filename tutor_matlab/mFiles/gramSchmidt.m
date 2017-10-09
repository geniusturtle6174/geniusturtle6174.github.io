function [Q R] = gramSchmidt(A)

[m n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);

a = norm(A(:,1));
Q(:,1) = A(:,1)/a;
R(1,1) = a;

for i = 2:n
    u = Q(:,1:i-1)'*A(:,i);
    v = A(:,i) - Q(:,1:i-1)*u;
    nv = norm(v);
    R(1:i-1,i) = u;
    R(i,i) = nv;
    Q(:,i) = v/nv;
end
