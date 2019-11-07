phi = @(u) u-atan(u);
a = @(u,v) 2/(1 + u.*u.*sin(v).*sin(v));
r = @(u,v) a(u,v).*sqrt(1+ u.*u).*sin(v);
funx = @(u,v) r(u,v).*cos(phi(u));
funy = @(u,v) r(u,v).*sin(phi(u));
funz = @(u,v) log(tan(v/2)) + a(u,v).*cos(v);

fsurf(funx,funy,funz,[-100 100 0 pi]);
camlight