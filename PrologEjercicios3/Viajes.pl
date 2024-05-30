% Hechos
transporte(roma, 20000).
transporte(londres, 25000).
transporte(tunez, 15000).

alojamiento(hotel, roma, 25000).
alojamiento(hotel, londres, 15000).
alojamiento(hotel, tunez, 10000).
alojamiento(hostal, roma, 15000).
alojamiento(hostal, londres, 10000).
alojamiento(hostal, tunez, 8000).
alojamiento(camping, roma, 10000).
alojamiento(camping, londres, 5000).
alojamiento(camping, tunez, 5000).

% Regla para calcular el costo total del viaje
costo_viaje(Lugar, TipoAlojamiento, Dias, CostoTotal) :-
    transporte(Lugar, CostoTransporte),
    alojamiento(TipoAlojamiento, Lugar, CostoAlojamientoPorDia),
    CostoAlojamiento is CostoAlojamientoPorDia * Dias,
    CostoTotal is CostoTransporte + CostoAlojamiento.