
function muat = fmuat(T)
global a0;
global a1;
global a2;
global a3;
global a4 ;

% a0 = 2.914;
% a1 = -0.4986;
% a2 = 0.03099;
% a3 = -0.0008236;
% a4 = 7.975e-6;

muat = a0 + a1.*T + a2.*(T.^2) + a3.*(T.^3) + a4.*(T.^4);

end