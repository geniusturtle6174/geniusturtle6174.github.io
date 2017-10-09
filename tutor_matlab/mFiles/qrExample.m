clear all;
close all;


A = [1 1; 10^-10 0; 0 10^-10];
A = [1 1;1 1+10^-8];
%A = [1 -1 4;1 4 -2;1 4 2;1 -1 0];
[m n] = size(A);

[Q1 R1] = gramSchmidt(A);
[Q2 R2] = householder(A);
[Q3 R3] = givensRotation(A);
[Q4 R4] = qr(A);

fprintf('gramSchmidt:    cond(A):%e\tnorm(eye(n)-Q''Q):%e\tnorm(A-QR):%e\n', cond(A), norm(eye(n)-Q1'*Q1), norm(A-Q1*R1)/norm(A));
fprintf('householder:    cond(A):%e\tnorm(eye(n)-Q''Q):%e\tnorm(A-QR):%e\n', cond(A), norm(eye(m)-Q2'*Q2), norm(A-Q2*R2)/norm(A));
fprintf('givensRotation: cond(A):%e\tnorm(eye(n)-Q''Q):%e\tnorm(A-QR):%e\n', cond(A), norm(eye(m)-Q3'*Q3), norm(A-Q3*R3)/norm(A));
fprintf('Matlab-QR:      cond(A):%e\tnorm(eye(n)-Q''Q):%e\tnorm(A-QR):%e\n', cond(A), norm(eye(m)-Q4'*Q4), norm(A-Q4*R4)/norm(A));
