function derivation = ode_system4(t, x, lambda)
 I = x(1);
 J = x(2);
 
 global k;
 
 dI = -(  fthetat(temp(t)) + fmuat(temp(t))  ).*I + (  (k.*fdeltat(temp(t)).*J)./lambda  );
 dJ = fthetat(temp(t)).*I - (fmumt(temp(t)).*J);
 
 derivation = [dI;dJ];
 
end