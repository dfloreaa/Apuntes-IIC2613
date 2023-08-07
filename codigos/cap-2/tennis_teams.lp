% Definimos a los jugadores
jugador("Tenista 1").
jugador("Tenista 2").
jugador("Tenista 3").
jugador("Tenista 4").
jugador("Tenista 5").
jugador("Tenista 6").
jugador("Tenista 7").
jugador("Tenista 8").

equipo(1..4).   % Otra forma de decir equipo(1). equipo(2). ...

% Un jugador no puede estar en dos equipos.
% No se pueden repetir jugadores en un equipo.

% Todos los jugadores pertenecen a un equipo.
1 { juega_en(J, E) : equipo(E) } 1 :- jugador(J).

% Todos los equipos tienen 2 jugadores.
2 { juega_en(J, E) : jugador(J) } 2 :- equipo(E).

#show juega_en/2.