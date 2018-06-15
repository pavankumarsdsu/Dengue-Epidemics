function gamamt = fgamamt(T)
global azerogm;
global aonegm;
% azerogm = 5*10^(4/3);
% aonegm = 0.0768;

gamamt = (1/azerogm).*(exp(aonegm.*T)) ;
% gamamt = (azerogm)*(exp(aonegm*T)) ;

end