
%param nach 
%https://books.google.de/books?id=O2PRBgAAQBAJ&pg=PA41&lpg=PA41&dq=kuensche+fläche+parametrisierung&source=bl&ots=ETodWNVHO8&sig=ACfU3U09TiaDyltiz25TxY1BjNNFo_enBw&hl=de&sa=X&ved=2ahUKEwj-ofPomNjlAhVS06YKHdHUBKcQ6AEwBnoECAoQAQ#v=onepage&q=kuensche%20fläche%20parametrisierung&f=false

%(killt meinen rechner wtf)
%phi = @(U) U-atan(U);
%a = @(U,V) 2./(1 + U.*U.*sin(V).*sin(V));
%r = @(U,V) a(U,V).*sqrt(1+ U.*U).*sin(V);

%funx = @(U,V) r(U,V).*cos(phi(U));
%funy = @(U,V) r(U,V).*sin(phi(U));
%funz = @(U,V) log(tan(V./2)) + a(U,V).*cos(V);

%alternative nach
%http://cognitiones.kantel-chaos-team.de/mathematik/3dxplormath.html


u = linspace(-2*pi,2*pi) ; 
v = linspace(0,pi) ;

[U, V] = meshgrid(u,v);
x= 2*(cos(U) + U.*sin(U)).*sin(V)./(1+U.*U.*sin(V).*sin(V));
y= 2*(sin(U) - U.*cos(U)).*sin(V)./(1+U.*U.*sin(V).*sin(V));
z= log(tan(V/2)) + 2*cos(V)./(1+U.*U.*sin(V).*sin(V));

surf(x,y,z)

