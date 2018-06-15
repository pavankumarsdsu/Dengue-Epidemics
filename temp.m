
function T  = temp(t)

global ed wd phid phim T0 em wm 

% ed = 5;
% wd = 2*(3.14);
% phid =92.30; 
% phim = 92.30;
% T0 = 10;
% em = 10/T0;
% wm = 2*(3.14)/365;


si = ed*sin(wd.*t + phid);
Tm = T0.*(1+em.*sin(wm.*t + phim));
T = Tm + si;

end