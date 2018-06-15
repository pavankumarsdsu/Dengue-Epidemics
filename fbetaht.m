function betaht = fbetaht(T)

global aonebh
global atwobh
global azerobh;

% azerobh = 1.044e-3;
% aonebh = 12.286;
% atwobh = 32.461;

if((T >= aonebh) & (T <= atwobh) )
 
betaht = azerobh.*T.*(T - aonebh).*sqrt((atwobh - T));
    
 else
     betaht = 0;
 
end
end