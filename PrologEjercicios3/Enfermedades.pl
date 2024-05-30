enfermo_de(manuel, gripe).
tiene_sintoma(alicia, cansancio).

sintoma_de(fiebre, gripe).
sintoma_de(tos, gripe).
sintoma_de(cansancio, anemia).

elimina(vitaminas, cansancio).
elimina(aspirinas, fiebre).
elimina(jarabe, tos).

% Regla para recetar un remedio a una persona basada en su enfermedad y los síntomas que alivia el remedio
recetar_a(X, Y) :- 
    enfermo_de(Y, A), 
    alivia(X, A).

% Regla para determinar si un remedio alivia una enfermedad basada en los síntomas
alivia(X, Y) :- 
    elimina(X, A), 
    sintoma_de(A, Y).

% Regla para determinar si una persona está enferma de una enfermedad basada en sus síntomas
enfermo_de(X, Y) :- 
    tiene_sintoma(X, Z), 
    sintoma_de(Z, Y).
