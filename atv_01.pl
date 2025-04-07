mamifero(X) :-
    tem_pelo(X),
    da_leite(X).

ave(Y) :-
    tem_penas(Y),
    voa_e_oviparo(Y).

carnivoro(Z) :-
    come_carne(Z),
    dentes_pontiagudos(Z).
    
% Leao
tem_pelo(leao).
da_leite(leao).
come_carne(leao).
dentes_pontiagudos(leao).

% aguia
tem_penas(aguia).
voa_e_oviparo(aguia).
come_carne(aguia).
dentes_pontiagudos(aguia).  % opcional, pra fins do exemplo

% Vaca
tem_pelo(vaca).
da_leite(vaca).

% Pinguim
tem_penas(pinguim).
voa_e_oviparo(pinguim). % mesmo que nao voe, podemos adaptar se quiser

% Gato
tem_pelo(gato).
da_leite(gato).
come_carne(gato).
dentes_pontiagudos(gato).
