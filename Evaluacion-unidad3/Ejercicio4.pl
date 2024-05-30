:- dynamic(arista/3).

% Define las aristas del grafo (desde, hacia, distancia)
arista('Nueva C�rdoba', 'Alta C�rdoba', 3000).
arista('Nueva C�rdoba', 'Casco C�ntrico', 200).
arista('Casco C�ntrico', 'Villa Allende', 4000).
arista('Alta C�rdoba', 'Villa Allende', 750).
arista('Nueva C�rdoba', 'Villa Arg�ello', 5000).
arista('Villa Arg�ello', 'Villa Allende', 3000).
arista('Nueva C�rdoba', 'Las Palmas', 4000).
arista('Las Palmas', 'Villa Allende', 3200).
arista('Nueva C�rdoba', 'Los Pl�tanos', 2000).
arista('Los Pl�tanos', 'San Fernando', 3000).
arista('San Fernando', 'Villa Allende', 1700).

% Predicado para encontrar el camino m�s corto
camino_mas_corto(Inicio, Fin, Camino, Distancia) :-
    dijkstra([(Inicio, 0)], [], Fin, CaminoInverso, Distancia),
    reverse(CaminoInverso, Camino).

% Algoritmo de Dijkstra implementado en Prolog
dijkstra([], _, _, _, _) :- fail.  % Falla si no se encuentra un camino
dijkstra([(Fin, Costo)|_], Visitados, Fin, [Fin|Visitados], Costo).  % Si se alcanza el nodo final
dijkstra([(Inicio, DistanciaInicio)|Resto], Visitados, Fin, Camino, Distancia) :-
    findall((Siguiente, NuevoCosto),
            (arista(Inicio, Siguiente, CostoPaso), \+ member(Siguiente, Visitados), NuevoCosto is DistanciaInicio + CostoPaso),
            NodosSiguientes),
    append(Resto, NodosSiguientes, NuevaFrontera),
    sort(2, @=<, NuevaFrontera, FronteraOrdenada),  % Ordena por distancia para elegir el siguiente paso m�s corto
    dijkstra(FronteraOrdenada, [Inicio|Visitados], Fin, Camino, Distancia).

