%Salvija Rasiukevičiūtė, EDIf-25/1, 6 var., 2026-09-29
x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

[X, Y] = meshgrid(x, y);

Z = sin((X.^2 + Y.^2)/20).*exp(-(X.^2 + Y.^2));

figure
surf(X, Y, Z)
shading interp
colormap parula
view(45, 45)
axis([-2 2 -2 2 -1 1])
title('Funkcijos f(x,y) grafikas')
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
grid on

x = linspace(-1, 1, 20);
y = linspace(-1, 1, 20);

[X, Y] = meshgrid(x, y);

r = sqrt(X.^2 + Y.^2);
Z = exp(r.^2);

figure
surf(X, Y, Z)
shading interp
colormap parula
view(70, 70)
title('Funkcijos z(r) grafikas')
xlabel('x')
ylabel('y')
zlabel('z(r)')
grid on

x = linspace(-1, 1, 20);
y = linspace(-1, 1, 20);

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure

subplot(1,3,1)
surf(X, Y, Z)
colormap(gca, [0.3 0.7 1])
title('Mėlynas atspalvis')
xlabel('x')
ylabel('y')
zlabel('z')

subplot(1,3,2)
surf(X, Y, Z)
colormap(gca, [0.8 0.4 0.8])
title('Violetinis atspalvis')
xlabel('x')
ylabel('y')
zlabel('z')

subplot(1,3,3)
surf(X, Y, Z)
colormap(gca, [0.4 0.8 0.5])
title('Žalias atspalvis')
xlabel('x')
ylabel('y')
zlabel('z')