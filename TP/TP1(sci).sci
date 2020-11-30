//Exemple 1

function y=exemple1(x)  //fonction de l'exemple 1
    y=2*x
endfunction


//Exercice 6

function res=X(n)
    Xold=[3;0;-1]
    Xnew=[3;0;-2]
    A=[2,1,-2;0,3,0;1,-1,5]
    B=[1,-1,-1;-3,3,-3;-1,1,1]
    for i=2:n
        Aux=1/6*A*Xold+1/6*B*Aux
        Xold=Xnew
        Xnew=Aux
    end
    res=Xnew
endfunction

//Exercice 8

//1
function U=exo8(n)
    U=[1]
    for k=1:n
        U=[U,2*U(k)+(k-1)^2]
    end
endfunction

//2
function s=somme_exo8(n)
    s=sum(exo8(n))
endfunction

//3
function s=sommebis_exo8(n)
    s=cumsum(exo8(n))
endfunction

//Exercice 10

// 1 et 2
function U=eml2015(n)
    U=zeros(1,n+1)
    U(1)=1/2
    for k=2:n+1
        U(k)=U(k-1)^2-U(k-1)*log(U(k-1))
    end
    plot(U,'+')
endfunction

//On conjecture qu'elle est croissante et converge vers 1

//Exercice 11

//1
function y=f11(x)
    y=sqrt(1+x)
endfunction

//2 et 3
function graphe11(n)
    clf(1)
    x=linspace(-1,4,n);
    fplot2d(x,f11)
    plot(x,x)
endfunction

// 4.a
function A=matrice11(n)
    A=zeros(2,2*n+2)
    A(:,1)=[-0.5;-0.5]
    A(:,2)=[-0.5;f11(-0.5)]
    for i=1:n
        A(:,2*i+1)=f11(A(:,2*i-1))
        A(:,2*i+2)=f11(A(:,2*i))
    end
endfunction

// 4.b
function graphe11bis(n)
    graphe11(1000)
    A=matrice11(n)
    plot(A(1,:),A(2,:))
endfunction
