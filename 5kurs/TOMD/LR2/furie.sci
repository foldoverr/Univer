function [a0, ak, bk]=furie(K, T, Ti)
q=T/Ti;
ak = zeros(1, K);
bk = zeros(1, K);
a0 = 0;
for k = 1 : K,
 bk(k) = 2/(%pi*k)*(sin(k*%pi/q)/(k*%pi/q)-cos(k*%pi/q));
end
endfunction
