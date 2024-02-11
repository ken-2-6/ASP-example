{assign(X, Y, N) : N=1..n*n} = 1 :- X=1..n*n, Y=1..n*n.
 :- X1 != X2, N1 = N2, assign(X1, Y, N1), assign(X2, Y, N2).
 :- Y1 != Y2, N1 = N2, assign(X, Y1, N1), assign(X, Y2, N2).
block(X, Y, A, B) :- P=1..n, Q=1..n, X=1..n*n, Y=1..n*n, (X-1) / n = A, (Y-1) / n = B.
N1 != N2 :- X1 != X2, block(X1, Y1, A, B), block(X2, Y2, A, B), assign(X1, Y1, N1), assign(X2, Y2, N2).
N1 != N2 :- Y1 != Y2, block(X1, Y1, A, B), block(X2, Y2, A, B), assign(X1, Y1, N1), assign(X2, Y2, N2).
#show assign/3.