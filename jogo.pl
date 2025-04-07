% -------------------------------
% 🐾 Base de dados: bicho(Nome, ListaDeNumeros)
% -------------------------------
bicho(avestruz,   [1,2,3,4]).
bicho(aguia,      [5,6,7,8]).
bicho(burro,      [9,10,11,12]).
bicho(borboleta,  [13,14,15,16]).
bicho(cachorro,   [17,18,19,20]).
bicho(cabra,      [21,22,23,24]).
bicho(carneiro,   [25,26,27,28]).
bicho(camelo,     [29,30,31,32]).
bicho(cobra,      [33,34,35,36]).
bicho(coelho,     [37,38,39,40]).
bicho(cavalo,     [41,42,43,44]).
bicho(elefante,   [45,46,47,48]).
bicho(galo,       [49,50,51,52]).
bicho(gato,       [53,54,55,56]).
bicho(jacare,     [57,58,59,60]).
bicho(leao,       [61,62,63,64]).
bicho(macaco,     [65,66,67,68]).
bicho(porco,      [69,70,71,72]).
bicho(pavao,      [73,74,75,76]).
bicho(peru,       [77,78,79,80]).
bicho(pombo,      [81,82,83,84]).
bicho(coisa,      [85,86,87,88]). % pode ajustar o nome
bicho(touro,      [89,90,91,92]).
bicho(tigre,      [93,94,95,96]).
bicho(vaca,       [97,98,99,0]).  % 00 é representado por 0

% -------------------------------
% 🔍 Consulta de bicho por número
% -------------------------------
bicho_do_numero(Numero, Bicho) :-
    N is Numero mod 100,
    bicho(Bicho, Lista),
    member(N, Lista).

% -------------------------------
% 🎰 Sorteio aleatório (00 a 99)
% -------------------------------
sortear_numero(N) :-
    random_between(0, 99, N).

% -------------------------------
% 🎮 Jogar: aposta e sorteio
% -------------------------------
apostar(BichoEscolhido) :-
    sortear_numero(N),
    bicho_do_numero(N, BichoSorteado),
    format("Número sorteado: ~|~`0t~d~2+", [N]), nl,
    format("Bicho sorteado: ~w~n", [BichoSorteado]),
    (BichoEscolhido = BichoSorteado ->
        writeln("🎉 Você GANHOU!");
        writeln("💀 Você PERDEU!")).

% -------------------------------
% 🧪 Testes manuais:
% ?- bicho_do_numero(53, B).
% ?- sortear_numero(N).
% ?- apostar(gato).
% -------------------------------
