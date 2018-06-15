function deriv = ode_system2(t, x)

A = x(1);
Ms = x(2);
Me = x(3);
Mi = x(4); 
Hs = x(5);
He = x(6);
Hi = x(7);
Hr = x(8);

 
global k C b muht gamaht alphaht pavan;
H = Hs+He+Hi+Hr;
% dA = k.*fdeltat(temp(t)).*(1-A/C).*(Ms + Me + Mi) - (fthetat(temp(t)) + fmuat(temp(t))).*A;
% dMs = fthetat(temp(t)).*A - (b.*fbetamt(temp(t)).*Ms.*Hi)/H - fmumt(temp(t)).*Ms;
% dMe = (b.*fbetamt(temp(t)).*Ms.*Hi)/H - (fgamamt(temp(t)) + fmumt(temp(t))).*Me;
% dMi = fgamamt(temp(t)).*Me - fmumt(temp(t)).*Mi;
% dHs = muht.*(H-Hs) - (b.*fbetaht(temp(t)).*Hs.*Mi)/H;
% dHe = (b.*fbetaht(temp(t)).*Hs.*Mi)/H - (gamaht + muht).*He;
% dHi = gamaht.*He - (alphaht + muht).*Hi;
% dHr = alphaht.*Hi - muht.*Hr;

dA = k*fdeltat(temp(t))*(1-A/C)*(Ms + Me + Mi) - (fthetat(temp(t)) + fmuat(temp(t)))*A;
dMs = fthetat(temp(t))*A - ((b*fbetamt(temp(t))*Ms*Hi)/H) - fmumt(temp(t))*Ms;
dMe = ((b*fbetamt(temp(t))*Ms*Hi)/H) - (fgamamt(temp(t)) + fmumt(temp(t)))*Me;
dMi = fgamamt(temp(t))*Me - fmumt(temp(t))*Mi;
dHs = (pavan-muht*Hs) - ((b*fbetaht(temp(t))*Hs*Mi)/H);
dHe = ((b*fbetaht(temp(t))*Hs*Mi)/H) - (gamaht + muht)*He;
dHi = gamaht*He - (alphaht + muht)*Hi;
dHr = alphaht*Hi - muht*Hr;


deriv = [dA; dMs; dMe; dMi; dHs; dHe; dHi; dHr];

end