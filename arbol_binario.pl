insertaArbol(X,vacio,arbol(X,vacio,vacio)).
insertaArbol(X,arbol(X,A1,A2),arbol(X,A1,A2)).
insertaArbol(X,arbol(Y,A1,A2),arbol(Y,A1N,A2)):- X<Y, insertaArbol(X,A1,A1N).
insertaArbol(X,arbol(Y,A1,A2),arbol(Y,A1,A2N)) :- X>Y, insertaArbol(X,A2,A2N).
creaArbol([],A,A).
creaArbol([X|Xs],Aux,A):- insertaArbol(X,Aux,A2),creaArbol(Xs,A2,A).
lista2arbol(Xs,A):- creaArbol(Xs,vacio,A).
