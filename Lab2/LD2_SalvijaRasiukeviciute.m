%Salvija Rasiukevičiūtė, EDIf-25/1, 2026-09-09
a = 10:-1:-15;
b = log2(a);
c = a ./ b;
c = c.';

Cm1 = pi/2: pi/2: 3*pi/2;
Cm2 = -1: 1;
Cm3 = -3: -1: -5;

C = [Cm1; Cm2; Cm3];
suma = sum(C, 2)

t = 0:0.001:1.5;
A = 4.5;
f = 6;
sigma = 1;
U1 = 3;
U2 = 1.5;

s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));
sn = s+n;

virsijancios = sn(sn>U1);

filtr = sn;
filtr(abs(filtr) < U2) = 0;

nefiltr = size(sn);

atrinktosa = size(virsijancios);

didz = max(filtr);
maz = min(filtr);

%papildoma

A = input("Vektorius A: ");

ind = mod(1:length(A), 2) ==0;
B = A(ind);
C = A(~ind);
C = C(end:-1:1);

disp('Vektorius B yra: ');
disp(B)

disp('Vektorius C yra: ');
disp(C)