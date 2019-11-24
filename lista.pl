ultimo([Result],Result).
ultimo([_|L],Result):-ultimo(L,Result).

elemento_k([Result|_], 0, Result).
elemento_k([_|L], K, Result) :- K > 0, K1 is K -1,elemento_k(L, K1, Result).

maximo([L], L).
maximo([Cabeza|Cola], Max) :- maximo(Cola, MaxRec),
Max is max(MaxRec, Cabeza).

buscar(X, [X|_]).
buscar(X, [_|Ys]):-buscar(X, Ys).

longitud([], 0).
longitud([_|Xs], L):- longitud(Xs, L2),
          L is L2 + 1.

insertar_cabeza(X,L1,L2):- select(X,L2,L1).

insertar_cola(X,L1,L2):- select(L2,L1,X).

eliminar_cola([Cabeza|_],Cabeza).

eliminar_cabeza([_|Cola],Cola).

eliminar_elemento([X|Xs],X,Xs).
eliminar_elemento([Y|C1],E,[Y|C2]):-eliminar_elemento(C1,E,C2).

elimina_elemento2(_,[],[]).
eliminar_elemento2(X,[X|C],R):-!,eliminar_elemento2(X,C,R).
eliminar_elemento2(X,[Y|Xs],[Y|Xa]):- eliminar_elemento2(X,Xs,Xa).

busca_indice(0,X, [X|_]).
busca_indice(Index,X, [_|Ys]):-busca_indice(Index1,X, Ys),Index is Index1+1.

list_min(M, [X|Xs]):-list_min2(M, X, Xs).
list_min2(M, M, []):- !.
list_min2(X, Y, [Z|Zs]):-Z =< Y,!,list_min2(X, Z, Zs).
list_min2(X, Y, [Z|Zs]):-Z >= Y,list_min2(X, Y, Zs).












