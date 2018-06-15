function thetat = fthetat(T)
global azerot;
global aonet;
global atwot;

azerot = 8.044e-5;
aonet = 11.386;
atwot = 40.1461;

if((T >= aonet) & (T <= atwot))
    
thetat = azerot.*T.*(T - aonet).*sqrt((atwot - T));

else
thetat = 0;
end
end
