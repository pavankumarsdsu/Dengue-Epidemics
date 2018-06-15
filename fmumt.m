function mumt = fmumt(T)
global bzeroum;
global boneum;
global btwoum;

% bzeroum = 0.1901;
% boneum = -0.0134;
% btwoum = 2.739e-4;

mumt = bzeroum + boneum.*T + btwoum.*(T.^2);
end