% Hechos
entrada(antipasto).
entrada(sopa).
entrada(quesos).

carne(milanesa).
carne(bife_de_chorizo).
carne(pollo_asado).

pescado(congrio).
pescado(pejerrey).

postre(flan).
postre(helado).
postre(fruta).

% Relación derivada: plato_principal
plato_principal(P) :- carne(P).
plato_principal(P) :- pescado(P).

% Definición de comida completa
comida(E, P, D) :- entrada(E), plato_principal(P), postre(D).

% Calorías de cada plato
calorias(antipasto, 150).
calorias(sopa, 100).
calorias(quesos, 200).

calorias(milanesa, 500).
calorias(bife_de_chorizo, 700).
calorias(pollo_asado, 400).

calorias(congrio, 300).
calorias(pejerrey, 250).

calorias(flan, 350).
calorias(helado, 200).
calorias(fruta, 100).

% Calcular valor calórico total de una comida
valor_calorico(E, P, D, V) :- calorias(E, X), calorias(P, Y), calorias(D, Z), V is X + Y + Z.

% Definir comida equilibrada
comida_equilibrada(E, P, D) :- valor_calorico(E, P, D, V), V =< 800.