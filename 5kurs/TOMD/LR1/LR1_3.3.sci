//Задание 3.3
n=10;
x= linspace(-%pi/2, %pi/2, n);

function z=f(x)
    z=(((x.^2+1).^(1/3))./(sqrt((abs(x)+1)/4))).*((x)./(1+(sin(x)).^2));
endfunction

z=f(x);

disp("x:", x);
disp("z:", z);

plot2d(x, z, style = 5);  // Стиль линии 5 (можно поменять)
xlabel("x");
ylabel("f(x)");
title("График функции f(x)");
xgrid();
