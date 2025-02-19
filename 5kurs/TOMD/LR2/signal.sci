function x0=signal(Ti, t)
x0=zeros(1,length(t));
x0(find(abs(t)<=Ti/2))=2/Ti*t(find(abs(t)<=Ti/2));
endfunction
