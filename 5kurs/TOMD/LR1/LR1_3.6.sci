// Задание 3.6

N = 10;  

rows = N + 10;
cols = 100 * N;

X1 = grand(rows, cols, "chi", 1);  
X5 = grand(rows, cols, "chi", 5);  
X20 = grand(rows, cols, "chi", 20); 

function stats(X, label)
    mean_X = mean(X);      // Среднее
    var_X = variance(X);   // Дисперсия
    std_X = stdev(X);      // Стандартное отклонение
    median_X = median(X);  // Медиана

    disp("=== " + label + " ===");
    disp("Среднее: " + string(mean_X));
    disp("Дисперсия: " + string(var_X));
    disp("Стандартное отклонение: " + string(std_X));
    disp("Медиана: " + string(median_X));
endfunction

stats(X1, "Хи-квадрат (1 степень свободы)");
stats(X5, "Хи-квадрат (5 степеней свободы)");
stats(X20, "Хи-квадрат (20 степеней свободы)");


clf(1); figure(1);
histplot(50, X1);
title("Хи-квадрат (1 степень свободы)");
xgrid;

clf(2); figure(2);
histplot(50, X5, normalization=%t);
title("Хи-квадрат (5 степеней свободы) - нормализованная");
xgrid;

clf(3); figure(3);
histplot(50, X20, leg="Хи-квадрат (20 степеней свободы)", style=5);
title("Хи-квадрат (20 степеней свободы) - стиль 5");
xgrid;
