function deltat = fdeltat(T)
%deltam = 9.531;
%deltah = 22.55;
%n1 = 7.084;
global deltam deltah n1;

deltat = (deltam.*(T.^n1))/((deltah.^n1) + (T.^n1));
end