% Predicados
conductor_seguro(juan).
conductor_seguro(jose).
conductor_seguro(jeremias).
conductor_seguro(jorge).

auto(juan).
auto(jose).
auto(jeremias).
auto(jorge).

vive_cerca(aida).
vive_cerca(analia).

vive_lejos(roberto).
vive_lejos(raul).
vive_lejos(rodrigo).
vive_lejos(ana).

bebio(juan, vino).
bebio(jorge, vino).

bailo(jorge).

% Reglas
llega_seguro(Persona) :- conductor_seguro(Persona), auto(Persona).
llega_seguro(Persona) :- vive_cerca(Persona).
llega_seguro(Persona) :- vive_cerca(Amigo), amigo(Persona, Amigo), auto(Amigo).

