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
% přesná poloha
vpravo(jesteri, diry).
vlevo(diry, jesteri).
vpravo(planetky, pivo).
vlevo(pivo, planetky).
vpravo(harr, krysy).
vlevo(krysy, harr).
vpravo(tanec, jednorozci).
vlevo(jednorozci, tanec).
vpravo(kov, ostrovy).
vlevo(ostrovy, kov).
vpravo(lide, rostliny).
vlevo(rostliny, lide).
vpravo(cestina, ostrovy).
vlevo(ostrovy, cestina).
vpravo(hory, diry).
vlevo(diry, hory).
vpravo(mana, skok).
vlevo(skok, mana).
vpravo(replikoni, ostrovy).
vlevo(ostrovy, replikoni).
vpravo(hurikany, krysy).
vlevo(krysy, hurikany).
vpravo(plane, filosofujici).
vlevo(filosofujici, plane).
vpravo(burrito, slunecno).
vlevo(slunecno, burrito).
vpravo(farmareni, mana).
vlevo(mana, farmareni).
vpravo(hory, hlaskovani).
vlevo(hlaskovani, hory).
vpravo(nikde, mana).
vlevo(mana, nikde).
vpravo(nesikovni, skok).
vlevo(skok, nesikovni).
vpravo(lesy, nory).
vlevo(nory, lesy).
vpravo(hurikany, prsi).
vlevo(prsi, hurikany).
vpravo(plane, jesteri).
vlevo(jesteri, plane).
% sousedi

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
