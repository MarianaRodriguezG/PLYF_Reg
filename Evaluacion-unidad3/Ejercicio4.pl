:- dynamic(arista/3).

% Define las aristas del grafo (desde, hacia, distancia)
arista('Nueva Córdoba', 'Alta Córdoba', 3000).
arista('Nueva Córdoba', 'Casco Céntrico', 200).
arista('Casco Céntrico', 'Villa Allende', 4000).
arista('Alta Córdoba', 'Villa Allende', 750).
arista('Nueva Córdoba', 'Villa Argüello', 5000).
arista('Villa Argüello', 'Villa Allende', 3000).
arista('Nueva Córdoba', 'Las Palmas', 4000).
arista('Las Palmas', 'Villa Allende', 3200).
arista('Nueva Córdoba', 'Los Plátanos', 2000).
arista('Los Plátanos', 'San Fernando', 3000).
arista('San Fernando', 'Villa Allende', 1700).

% Predicado para encontrar el camino más corto
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
    sort(2, @=<, NuevaFrontera, FronteraOrdenada),  % Ordena por distancia para elegir el siguiente paso más corto
    dijkstra(FronteraOrdenada, [Inicio|Visitados], Fin, Camino, Distancia).

