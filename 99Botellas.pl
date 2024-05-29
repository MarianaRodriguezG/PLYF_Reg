% Caso base: ya no hay mas botellas de cerveza en la pared
bottles_of_beer(0) :-
    write('No more bottles of beer on the wall, no more bottles of beer.'), nl,
    write('Go to the store and buy some more, 99 bottles of beer on the wall.').

% Caso recursivo: Hay N cantidad de botellas en la pared
bottles_of_beer(N) :-
    N > 0, % revisar si hay al menos una botella
    % se imprime el verso actual de la cancion
    write(N), write(' bottles of beer on the wall, '), write(N), write(' bottles of beer.'), nl,
    write('Take one down and pass it around, '),
    Next is N - 1, % se calcula el numero de botellas restantes para el siguiente caso
    % Impresion del siguiente verso
    write(Next), write(' bottles of beer on the wall.'), nl,
    % Llamada al caso recursivo
    bottles_of_beer(Next).
%con esta regla se inicia la ejecion del programa
start :-
    %el caso inicial son las 99 botellas de cerveza
    bottles_of_beer(99).

