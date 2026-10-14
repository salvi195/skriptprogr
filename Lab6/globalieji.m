clc;
clear;

global x
x = 2*pi:-0.1:-2*pi;

y = zeros(size(x));

y(x ~= 0) = funkcija1();

if any(x == 0)
    y(x == 0) = funkcija2();
end

plot(x, y, 'y--*');
grid on;
xlabel('x');
ylabel('y');
title('Funkcijos grafikas');

whos x
