exec('C:\Users\stisk\Desktop\Univer\5kurs\TOMD\LR2\furie.sci', -1)
exec('C:\Users\stisk\Desktop\Univer\5kurs\TOMD\LR2\signal.sci', -1)
K = 20;
Ti = 1;
T = 8;
t = [-T/2 : T/1000 : T/2];
x0=signal(Ti, t);
[a0, ak, bk] = furie(K, T, Ti);
x = zeros(1, length(t));
x = x + a0/2;
rmse_values = zeros(1, K);
for k = 1 : K,
x = x + ak(k)*cos(k*2*%pi/T*t)+ bk(k)*sin(k*2*%pi/T*t);
e = x0 - x;
rmse_values(k) = norm(e) / norm(x0);
end;
disp('ОСКО=' + string(rmse_values));
figure(1)
subplot(2,1,1)
plot(t, x,'r',t,x0,'b');
title('Исходный и синтезированные сигналы')
subplot(2,1,2)
title('Ошибка');
plot(t,e);
figure(2);
A=sqrt(ak.^2+bk.^2);
a=[a0 A];
subplot(2,1,1)
bar(a);
title('Коэффициенты Фурье (спектр)')
subplot(2,1,2)
title('Зависимость ОСКО от K ');
plot(1:K, rmse_values);
