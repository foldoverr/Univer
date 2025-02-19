n = 3;
x = linspace(0,%pi/2,n);
y = linspace(0,%pi/2,n);
disp("x:",x," y:", y);
function z=f(x,y)
    z=abs(sin(x)+sin(y)) + x + y;
endfunction

z=feval(x,y,f);
disp("z:", z);
clf;
figure(1);
subplot(1,3,1);
surf(x,y,z');
subplot(1,3,2);
plot3d(x,y,z);
subplot(1,3,3);
plot3d1(x,y,z);
