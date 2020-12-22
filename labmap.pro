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
% vlevo
vlevo(diry, hory).
vlevo(diry, jesteri).
vlevo(filosofujici, plane).
vlevo(hlaskovani, hory).
vlevo(jednorozci, tanec).
vlevo(jesteri, plane).
vlevo(krysy, harr).
vlevo(krysy, hurikany).
vlevo(mana, farmareni).
vlevo(mana, nikde).
vlevo(nory, lesy).
vlevo(ostrovy, cestina).
vlevo(ostrovy, kov).
vlevo(ostrovy, replikoni).
vlevo(pivo, planetky).
vlevo(prsi, hurikany).
vlevo(rostliny, lide).
vlevo(skok, mana).
vlevo(skok, nesikovni).
vlevo(slunecno, burrito).
% vpravo
vpravo(burrito, slunecno).
vpravo(cestina, ostrovy).
vpravo(farmareni, mana).
vpravo(harr, krysy).
vpravo(hory, diry).
vpravo(hory, hlaskovani).
vpravo(hurikany, krysy).
vpravo(hurikany, prsi).
vpravo(jesteri, diry).
vpravo(kov, ostrovy).
vpravo(lesy, nory).
vpravo(lide, rostliny).
vpravo(mana, skok).
vpravo(nesikovni, skok).
vpravo(nikde, mana).
vpravo(plane, filosofujici).
vpravo(plane, jesteri).
vpravo(planetky, pivo).
vpravo(replikoni, ostrovy).
vpravo(tanec, jednorozci).
% sousedi
soused(skok, hlaskovani).
soused(hlaskovani, skok).
soused(baziny, ufoni).
soused(ufoni, baziny).
soused(b-enti, tcp).
soused(tcp, b-enti).
soused(slunecno, znakr).
soused(znakr, slunecno).
soused(kefa, ostrovy).
soused(ostrovy, kefa).
soused(voda, pivo).
soused(pivo, voda).
soused(voda, rostliny).
soused(rostliny, voda).
soused(b-enti, fixler).
soused(fixler, b-enti).
soused(znakr, ostrovy).
soused(ostrovy, znakr).
soused(nesikovni, chleba).
soused(chleba, nesikovni).
soused(mrakodrapy, slunecno).
soused(slunecno, mrakodrapy).
soused(diry, jesteri).
soused(jesteri, diry).
soused(planetky, java).
soused(java, planetky).
soused(pracoviti, naivni).
soused(naivni, pracoviti).
soused(znakr, kroupy).
soused(kroupy, znakr).
soused(jesteri, anomalie).
soused(anomalie, jesteri).
soused(voda, lesy).
soused(lesy, voda).
soused(voda, jeskyne).
soused(jeskyne, voda).
soused(burrito, bozi).
soused(bozi, burrito).
soused(mrakodrapy, chleba).
soused(chleba, mrakodrapy).
soused(burrito, fixler).
soused(fixler, burrito).
soused(kour, jesteri).
soused(jesteri, kour).
soused(agresivni, jesteri).
soused(jesteri, agresivni).
soused(maringotky, elektrina).
soused(elektrina, maringotky).
soused(kefa, fixler).
soused(fixler, kefa).
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
% soused
sousedi(X, Y) :-
    soused(X, Y); vpravo(X, Y); vlevo(X, Y).
