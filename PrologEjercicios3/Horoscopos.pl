% Hechos de horóscopos
horoscopo(aries, 21, 3, 21, 4).
horoscopo(tauro, 21, 4, 21, 5).
horoscopo(geminis, 21, 5, 21, 6).
horoscopo(cancer, 21, 6, 21, 7).
horoscopo(leo, 21, 7, 21, 8).
horoscopo(virgo, 21, 8, 21, 9).
horoscopo(libra, 21, 9, 21, 10).
horoscopo(escorpio, 21, 10, 21, 11).
horoscopo(sagitario, 21, 11, 21, 12).
horoscopo(capricornio, 21, 12, 21, 1).
horoscopo(acuario, 21, 1, 21, 2).
horoscopo(piscis, 21, 2, 21, 3).

% Hechos de días válidos por mes
dias_validos(1, 31).  % Enero
dias_validos(2, 28).  % Febrero (no bisiesto)
dias_validos(3, 31).  % Marzo
dias_validos(4, 30).  % Abril
dias_validos(5, 31).  % Mayo
dias_validos(6, 30).  % Junio
dias_validos(7, 31).  % Julio
dias_validos(8, 31).  % Agosto
dias_validos(9, 30).  % Septiembre
dias_validos(10, 31). % Octubre
dias_validos(11, 30). % Noviembre
dias_validos(12, 31). % Diciembre

% Regla para verificar si un día es válido para un mes dado
dia_valido(Dia, Mes) :-
    dias_validos(Mes, MaxDia),
    Dia =< MaxDia.

% Regla para determinar el signo zodiacal
signo(Dia, Mes, Signo) :-
    dia_valido(Dia, Mes), % Verificamos que el día es válido para el mes
    horoscopo(Signo, DiaIni, MesIni, DiaFin, MesFin),
    (
        (Mes = MesIni, Dia >= DiaIni);
        (Mes = MesFin, Dia =< DiaFin);
        (Mes > MesIni, Mes < MesFin)
    ).