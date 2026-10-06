%Salvija Rasiukevičiūtė, EDIf-25/1, 6 var., 2026-10-07
valiutos = struct(...
    'USD', struct('supirkimas', 1.08, 'pardavimas', 1.12), ...
    'GBP', struct('supirkimas', 0.82, 'pardavimas', 0.86), ...
    'PLN', struct('supirkimas', 4.20, 'pardavimas', 4.35) ...
);

disp('Pradiniai valiutu kursai:')
disp('USD:')
disp(valiutos.USD)

disp('GBP:')
disp(valiutos.GBP)

disp('PLN:')
disp(valiutos.PLN)

valiutos.USD.supirkimas = 1.10;

disp('Atnaujinti USD duomenys:')
disp(valiutos.USD)

A = round(10 * rand + 1);
spejimas = input('Atspekite skaiciu nuo 1 iki 11: ');

while spejimas ~= A
    if spejimas < A
        disp('Skaicius per mazas')
    else
        disp('Skaicius per didelis')
    end

    spejimas = input('Spekite dar karta: ');
end
disp('Atspejote')

sakinys = input('Iveskite sakini su keliais tarpais tarp zodziu: ', 's');

rezultatas = '';
zodziai = 0;

for i = 1:length(sakinys)
    if sakinys(i) ~= ' '
        if i == 1 || sakinys(i - 1) == ' '
            zodziai = zodziai + 1;

            if ~isempty(rezultatas)
                rezultatas = [rezultatas ' '];
            end
        end

        rezultatas = [rezultatas sakinys(i)];
    end
end

disp('Sakinys su vienu tarpu tarp zodziu:')
disp(rezultatas)

disp('Zodziu skaicius:')
disp(zodziai)
