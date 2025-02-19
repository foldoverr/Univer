
// Задание 3.7

Frec = 12;
Fsample = 92;
T = 2 / Frec;


t1 = 0 : 1/Fsample : T;      
t2 = 0 : 1/(2*Fsample) : T;  
t3 = 0 : 1/(0.5*Fsample) : T;

// Генерация синусоидальных сигналов
x1 = sin(2 * %pi * Frec * t1);
x2 = sin(2 * %pi * Frec * t2);
x3 = sin(2 * %pi * Frec * t3);

clf; 

// Первый график (x1)
figure(1);
plot(t1, x1, 'b');
xlabel("Время (с)");
ylabel("Амплитуда");
title("Синусоидальный сигнал (x1)");
xgrid();

// Второй график (x2 и x3)
figure(2);
plot(t2, x2, 'r');
plot(t3, x3, 'g');
xlabel("Время (с)");
ylabel("Амплитуда");
title("Сравнение сигналов x2 и x3");
legend("x2 (1/(2*Fsample))", "x3 (1/(0.5*Fsample))");
xgrid();

// Сохранение значений в текстовый файл
fileID = mopen("signals.txt", "wt");
mfprintf(fileID, "t1 (1/Fsample)   x1\n");
mfprintf(fileID, "%f   %f\n", [t1' x1']');

mfprintf(fileID, "\nt2 (1/(2*Fsample))   x2\n");
mfprintf(fileID, "%f   %f\n", [t2' x2']');

mfprintf(fileID, "\nt3 (1/(0.5*Fsample))   x3\n");
mfprintf(fileID, "%f   %f\n", [t3' x3']');

mclose(fileID);
