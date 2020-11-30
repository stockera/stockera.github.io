//Exercice 1
A1=[1,2,3;4,5,6];
B1=[1,-1,0;3,2,-1;1,1,1];

// zeros(n,p) et ones(n,p) : matrice nxp avec que des zeros ou que des uns
// eye(n,p) : matrice nxp avec des 1 sur la diagonale principale et des zéros partout ailleurs
// linspace(a,b,n) : vecteur ligne de n nombres equidistants entre a et b (par défaut n=100)


//Exercice 2  

//1 
A2=[1,,3,5,7];
B2=[4,2,-1];
D2=[0;-2;0;0];
//2
C2=[[1;0;0],[0;1;0],[1;0;1]]
//3
M2=[A2;[B2;C2],D2]
N2=[D2';C2,B2']

//Exercice 3

C3=[ones(1,5);ones(3,1),zeros(3,4);ones(1,5)];

//Exercice 4

n=input('Entrez une valeur pour n:')
A4=[1,2/3,1/3;0,1,1;0,0,1]
disp(A4^n)



// Exercice 5

//2

U=zeros(1,100);
U(1)=1
for n=1:99
U(n+1)=1-exp(-U(n))
end
plot(U,"+")

//3 
//On conjecture que la suite est décroissante et converge vers 0

//Exercice 9

n=0
while exp(-sqrt(n))>10^(-4)
    n = n+1
end
disp(n)

//Exercice 10

n=1
u=1/2
while abs(u-1)>10^(-3)
    u=u^2-u*log(u);
    n=n+1 ;
end
disp(n)
disp(u)
