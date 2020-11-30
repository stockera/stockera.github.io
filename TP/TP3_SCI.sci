//1.1.2 Bernoulli
// Simulation d'une variable aléatoire suivant une loi de Bernoulli de paramètre p
function X=bernoulli(p)
    r = rand()
    if r<p then
        X=1
    else
        X=0
    end
endfunction

// Simulation d'un échantillon de taille N d'une variable aléatoire suivant une loi de Bernoulli de paramètre p

function X=echantillonBernoulli(N,p)
    X=[]
    for i=1:N
        X=[X,bernoulli(p)]
    end
endfunction

//1.1.3 Binomiale

// Simulation d'une variable aléatoire suivant une loi binomiale de paramètres n et p
function X=binomiale(n,p)
    X=sum(echantillonBernoulli(n,p))
endfunction

// Simulation d'un échantillon de taille N d'une variable aléatoire suivant une loi binomiale de paramètres n et p
function X=echantillonbinomiale(N,n,p)
    X=[]
    for i=1:N
        X=[X,binomiale(n,p)]
    end
endfunction

//La fonction suivante donne le vecteur [P(X=0),...,P(X=n)] pour X suivant une loi binomiale de paramètres n et p
function X=distribTheoBin(n,p)
    X=[]
    coeffbin=2^n*binomial(1/2,n)
    for k=0:n
        u=p^k*(1-p)^(n-k)*coeffbin(k+1)
        X=[X,u]
    end
endfunction

//2 Loi géométrique
//2.1 Distribution théorique

//La fonction suivante donne le vecteur [P(X=0),...,P(X=N)] pour X suivant une loi géométrique de paramètre p et trace le diagramme en barres correspondant
function distTheo(p,N)
    x = 1:N
    y = (1-p)^(x-1)*p
    scf(1); bar(x+0.5, y, width=0.2,'red')
endfunction

//2.3
// Simulation d'un échantillon de taille N d'une variable aléatoire suivant une loi de Bernoulli de paramètre p
function rang=geometrique(p)
    rang = 1
    aux=bernoulli(p)
    while aux==0
        rang=rang+1
        aux=bernoulli(p)
    end
endfunction

function X=echantillonGeometrique(N,p)
    X=[]
    for i=1:N
        X=[X,geometrique(p)]
    end
endfunction

//3 Loi uniforme

//3.2 Simulation d'une loi exponentielle

// La fonction suivante simule une loi exponentielle de paramètre lambda grâce au théorème d'inversion.
function X=expo(lambda)
   X=-log(1-rand())/lambda
endfunction

// La fonction suivante simule une loi uniforme sur [a,b] de paramètre lambda grâce au théorème d'inversion.
function X=unif(a,b)
   X=-(b-a)*rang()+a
endfunction
