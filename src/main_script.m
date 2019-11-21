
%param nach adrians fund
funx = @(u,v) (2.*cosh(u).*(cos(v) + v.*sin(v)))./(v.*v+cosh(u).*cosh(u));
funy = @(u,v) (2.*cosh(u) .* (sin(v) - v.*cos(v))) ./ (v.*v + cosh(u) .* cosh(u));
funz = @(u,v) u - (sinh(2.*u)) ./ (v.*v + cosh(u) .* cosh(u));

u = linspace(-2*pi,2*pi,200) ; 
v = linspace(-2*pi,2*pi,200) ;

[U, V] = meshgrid(u,v);
x = (2.*cosh(U).*(cos(V) + V.*sin(V)))./(V.*V+cosh(U).*cosh(U));
y = (2.*cosh(U) .* (sin(V) - V.*cos(V))) ./ (V.*V + cosh(U) .* cosh(U));
z = U - (sinh(2.*U)) ./ (V.*V + cosh(U) .* cosh(U));

surf(x,y,z)

saveobjmesh('Kuensche_flaeche_2.obj',x,y,z);


