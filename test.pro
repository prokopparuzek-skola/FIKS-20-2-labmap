% DB
svet(bourky, stromy).
svet(stromy, bourky).
svet(slunecno, java).
svet(java, slunecno).
svet(ostrovy, tcp).
svet(tcp, ostrovy).
svet(cestina, nakopavana).
svet(nakopavana, cestina).
svet(podlezani, krysy).
svet(krysy, podlezani).
svet(uspechani, baziny).
svet(baziny, uspechani).
svet(lini, nvoda).
svet(nvoda, lini).
svet(kapsa, myslenky).
svet(myslenky, kapsa).
svet(naivni, hloubka).
svet(hloubka, naivni).
% IF
same(X, Y) :- % 0
    svet(X, Y), X \= Y.
same(X, Y) :- % 1
    svet(X, A), svet(Y, A), X \= Y.
same(X, Y) :- % 2
    svet(X, A), svet(B, A), svet(Y, B), X \= Y.
same(X, Y) :- % 3
    svet(X, A), svet(B, A), svet(C, B), svet(C, Y), X \= Y.
same(X, Y) :- % 4
    svet(X, A), svet(B, A), svet(C, B), svet(C, D), svet(D, Y), X \= Y.
same(X, Y) :- % 5
    svet(X, A), svet(B, A), svet(C, B), svet(C, D), svet(D, E), svet(E, Y), X \= Y.
same(X, Y) :- % 6
    svet(X, A), svet(B, A), svet(C, B), svet(C, D), svet(D, E), svet(E, F), svet(F, Y), X \= Y.
