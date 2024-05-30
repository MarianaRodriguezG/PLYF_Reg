padre(marcelo, raul).
padre(marcelo, rita).
padre(juan, marcelo).
padre(juan, maria).
padre(raul, sergio).
padre(ricardo, victor).
madre(mirian, ricardo).
madre(rita, victor).
madre(rita, veronica).

lindo(mirian).
lindo(rita).

abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
nieto(Y, X) :- abuelo(X, Y).
hermana(X, Y) :- madre(M, X), madre(M, Y), X \= Y, female(X).
casado_con_lindo(X) :- (casado(X, Y) ; casado(Y, X)), lindo(Y).
tio(Tio, Sobrino) :- padre(P, Sobrino), hermano(Tio, P).
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y ; madre(W, X), madre(W, Y), X \= Y.

female(rita).
female(mirian).
female(maria).
female(veronica).

casado(juan, alguien).
casado(raul, rita).

