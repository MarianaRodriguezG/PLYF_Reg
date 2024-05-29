% Hechos
tiene_efectos_colaterales(medicina_de_patente).
recibe_sustancias_antinaturales(cuerpo).
provoca_nuevas_enfermedades(medicina_moderna).
causa_enfermedad(iatrogenia, tratamientos_medicos).
clasificacion_de_plantas(dioscorides, mas_de_800).
usos_de_plantas(egipcios, curar_anestesiar_momificar).
desarrollo_de_herbolaria(pais, china).
desarrollo_de_herbolaria(pais, mexico).
a_punto_de_desaparecer(herbolaria, edad_media).
composicion_industria_salud(laboratorios).
composicion_industria_salud(medicos).
composicion_industria_salud(clinicas).
composicion_industria_salud(sanatorios).
drogas_milagrosas(talidomida).
drogas_milagrosas(stalinon).
efectos_secundarios(medicina, congestión_hepatica).
efectos_secundarios(medicina, congestión_renal).
efectos_secundarios(medicina, fatiga_excesiva).
efectos_secundarios(medicina, adicción).
efectos_secundarios(medicina, alergias).
efectos_secundarios(medicina, daño_flora_intestinal).
efectos_secundarios(medicina, colitis).
efectos_secundarios(medicina, gastritis).
plantas_esencia_medicina_naturaleza.
oms_exige_desarrollo_herbolaria(paises).
efecto_hierbas(estimulante, hierbas).
efecto_hierbas(calmante, hierbas).
efecto_lento_seguro.

% Reglas
modo_preparacion(cocimiento, hierba_o_raiz) :- hierba_o_raiz.
modo_preparacion(infusion, hierba_o_raiz) :- hierba_o_raiz.
modo_preparacion(maceracion, planta_triturada) :- planta_triturada.
modo_preparacion(jarabe, planta) :- planta.
modo_preparacion(tintura, planta_triturada) :- planta_triturada.
modo_preparacion(jugo, plantas_exprimidas) :- plantas_exprimidas.
modo_preparacion(horchata, semillas_molidas) :- semillas_molidas.

% Relaciones
uso_de_plantas_para(hierbas, curar).
uso_de_plantas_para(hierbas, anestesiar).
uso_de_plantas_para(hierbas, momificar).
composicion_industria_salud(laboratorios).
composicion_industria_salud(medicos).
composicion_industria_salud(clinicas).
composicion_industria_salud(sanatorios).
drogas_milagrosas(talidomida).
drogas_milagrosas(stalinon).
efectos_secundarios(medicina, congestión_hepatica).
efectos_secundarios(medicina, congestión_renal).
efectos_secundarios(medicina, fatiga_excesiva).
efectos_secundarios(medicina, adicción).
efectos_secundarios(medicina, alergias).
efectos_secundarios(medicina, daño_flora_intestinal).
efectos_secundarios(medicina, colitis).
efectos_secundarios(medicina, gastritis).
plantas_esencia_medicina_naturaleza.
oms_exige_desarrollo_herbolaria(paises).
efecto_hierbas(estimulante, hierbas).
efecto_hierbas(calmante, hierbas).
efecto_lento_seguro.

%A partir de aqui aparecen los datos de las plantas asignadas
% Hechos sobre las plantas

% Ruda (Ruta graveolens)
planta(ruda, ruta_graveolens).
uso(ruda, partos_dificiles).
uso(ruda, abortos).
uso(ruda, regulariza_menstruacion).
uso(ruda, calma_menstruacion).
uso(ruda, alivio_de_jaquecas).
modo_preparacion(ruda, te).
frecuencia_uso(ruda, 2_o_3_veces_al_dia).
origen(ruda, desconocido).

% Ruibarbo (Rheum rhabarbarum)
planta(ruibarbo, rheum_rhabarbarum).
uso(ruibarbo, disenteria).
uso(ruibarbo, flatulencias).
uso(ruibarbo, diarrea_biliosa).
uso(ruibarbo, inapetencia).
uso(ruibarbo, lombrices).
uso(ruibarbo, males_de_higado).
uso(ruibarbo, purgantes).
uso_alternativo(ruibarbo, dulces).
uso_alternativo(ruibarbo, mermeladas).
origen(ruibarbo, china).

% Salvia (Salvia officinalis)
planta(salvia, salvia_officinalis).
tipo_salvia(salvia, selima).
tipo_salvia(salvia, mychod).
tipo_salvia(salvia, alhucema).
uso(salvia, purifica_aliento).
uso(salvia, limpia_dientes).
uso(salvia, postparto).
uso(salvia, activa_rinon).
uso(salvia, activa_higado).
combinacion(salvia, boldo).
combinacion(salvia, cedron).
combinacion(salvia, retama).
combinacion(salvia, romero).
combinacion(salvia, anis).
propiedad(salvia, purificante).
propiedad(salvia, tonica).
modo_preparacion(salvia, te).
origen(salvia, desconocido).

% Sen (Senna alata)
planta(sen, senna_alata).
color(sen, amarillo).
color(sen, naranja).
uso(sen, estrenimiento).
uso(sen, anemia).
uso(sen, fiebres).
modo_preparacion(sen, maceracion).
modo_preparacion(sen, te).
modo_consumo(sen, raiz_cruda).
modo_consumo(sen, raiz_cocida).
origen(sen, tropical).

% Reglas generales

% Plantas con preparación en té
planta_con_te(X) :- modo_preparacion(X, te).

% Plantas con usos medicinales específicos
planta_con_uso(X, Uso) :- uso(X, Uso).

