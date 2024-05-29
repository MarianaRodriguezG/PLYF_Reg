% Definición del árbol binario
mi_arbol_binario(t(t(t(nil, 2, nil), 4, t(nil, 5, nil)), 6, t(t(nil, 7, nil), 9, nil))).

% Recorrido preorden
preorder(nil, []).
preorder(t(Izquierda, Padre, Derecha), Lista) :- 
    preorder(Izquierda, ListaL),
    preorder(Derecha, ListaR),
    append([Padre | ListaL], ListaR, Lista).

% Recorrido inorden
inorder(nil, []).
inorder(t(Izquierda, Padre, Derecha), Lista) :- 
    inorder(Izquierda, ListaL),
    inorder(Derecha, ListaR),
    append(ListaL, [Padre | ListaR], Lista).

% Recorrido postorden
postorder(nil, []).
postorder(t(Izquierda, Padre, Derecha), Lista) :- 
    postorder(Izquierda, ListaL),
    postorder(Derecha, ListaR),
    append(ListaL, ListaR, R1),
    append(R1, [Padre], Lista).

% Método de búsqueda en el árbol binario
buscar_elemento(t(_, Elemento, _), Elemento, [Elemento]).
buscar_elemento(t(Izquierda, Padre, _), Elemento, [Padre|Ruta]) :-
    buscar_elemento(Izquierda, Elemento, Ruta).
buscar_elemento(t(_, Padre, Derecha), Elemento, [Padre|Ruta]) :-
    buscar_elemento(Derecha, Elemento, Ruta).
