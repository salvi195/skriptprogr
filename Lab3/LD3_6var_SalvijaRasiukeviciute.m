
%Salvija Rasiukevičiūtė, EDIf-25/1, 2026-09-23
x = -pi:0.1:pi; 
y = sin(x); 
 
figure 
plot(x, y) 
title('f(x)=sin(x)') 
xlabel('x') 
ylabel('f(x)') 
axis([min(x) max(x) min(y) max(y)]) 
xticks(-pi:pi/4:pi) 
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'}) 
legend('sin(x)', 'Location', 'bestoutside') 
grid on 
 
y1 = 2*sin(x).*cos(x); 
y2 = 3*sin(x).*cos(x); 
 
figure 
plot(x, y1, x, y2, 'LineWidth', 5) 
title('Funkcijos') 
xlabel('x') 
ylabel('f(x)') 
axis([min(x) max(x) min([y1 y2]) max([y1 y2])]) 
legend('2sin(x)cos(x)','3sin(x)cos(x)', 'Location', 'bestoutside') 
grid on 
 
t = 0:pi/20:4*pi; 
x = sin(t); 
y = cos(t); 
z = tan(t); 
 
figure 
plot3(x, y, z, 'o') 
title('Trimatis grafikas') 
xlabel('x(t)') 
ylabel('y(t)') 
zlabel('z(t)') 
grid on 
 
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
 
figure 
subplot(2,1,1) 
plot(t, sn, 'r-.') 
hold on 
plot(t, filtr, 'k-') 
yline(U1, 'y-', 'LineWidth', 2) 
yline(U2) 
title('Pradinis ir filtruotas signalai', 'Color', 'm', 'FontSize', 14) 
xlabel('Laikas, s') 
ylabel('Įtampa, V') 
legend('Pradinis signalas','Filtruotas signalas','U_1','U_2') 
axis([min(t) max(t) min(sn) max(sn)]) 
grid on 
hold off 
 
subplot(2,1,2) 
 
ind = sn > U1; 
stem(t(ind), sn(ind)) 
 
hold on 
plot(t(sn == min(sn)), min(sn), 'ks') 
plot(t(sn == max(sn)), max(sn), 'ko') 
 
title('Pradinio signalo reikšmės virš U_1', 'Color', 'm', 'FontSize', 14) 
xlabel('Laikas, s') 
ylabel('Įtampa, V') 
legend('Reikšmės virš U_1','Minimali reikšmė','Maksimali reikšmė') 
axis([min(t) max(t) min(sn) max(sn)]) 
grid on 
hold off