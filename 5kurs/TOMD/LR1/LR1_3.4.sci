// Задание 3.4
A = [5, 3, -1;
     2, 0, 4;
     3, 5, -1];
disp("A: ", A);

B = [1, 4, 16;
    -3, -2, 0;
     5, 7, 2];
disp("B: ", B);

disp("D = 2(A - 0.5 * B) + A^3 * B");

// Используем встроенные функции
D = 2 * (A - 0.5 * B) + A^3 * B;  

disp("D:", D);
