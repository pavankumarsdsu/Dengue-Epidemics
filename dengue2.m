
% constants for odesystem %
global k C b n1 deltam deltah muht gamaht alphaht pavan ;
k = 0.5;
C = 100000;
b = 0.1;
muht = 4.22e-5;
pavan = 2;
gamaht = 0.1;
alphaht = 0.1;

 global end_time;
 end_time = 5475;
 


 % constants for temperature function
 
 global ed wd phid phim T0 em wm;
 
ed = 5;
wd = 2*(3.14);
phid =92.30; 
phim = 92.30;
T0 = 38;
em = 5/T0;
%em = 0.535;
wm = 2*(3.14)/365;

 
 % constants for fdeltat %
 
 deltam = 9.531;
deltah = 22.55;
n1 = 7.084;

% constants for fmuat %
global a0 a1 a2 a3 a4;

a0 = 2.914;
a1 = -0.4986;
a2 = 0.03099;
a3 = -0.0008236;
a4 = 7.975e-6;

% constants for fthetat %
global azerot aonet atwot;

azerot = 8.044e-5;
aonet = 11.386;
atwot = 40.1461;

%constants for fmumt %
global bzeroum boneum btwoum;
bzeroum = 0.1901;
boneum = -0.0134;
btwoum = 2.739e-4;

% constants for fgamamt %
global azerogm aonegm;

azerogm = 5.0e+1;
% azerogm = 5*(10.^(4/3));
aonegm = 0.0768;

% constants for fbetamt %
global betamh n;

betamh = 18.9871;
n = 7;

% constants for fbetaht %
global azerobh aonebh atwobh;
azerobh = 1.044e-3;
aonebh = 12.286;
atwobh = 32.461;
 

model_title = 'DENGUE Epidemics';

initial.A = 1000;	
initial.Ms = 10000;	
initial.Me = 100;	
initial.Mi = 100;	
initial.Hs = 10000;	
initial.He = 1000;	
initial.Hi = 1000;	
initial.Hr = 1000;
%IH = initial.Hi + initial.He + initial.Hs + initial.Hr;
 
initial_values = [];
variable_names = fieldnames(initial);
for i=1:length(variable_names) 
    initial_values = [initial_values; initial.(variable_names{i})];
end
[t, y] = ode45(@(t, x) ode_system2(t, x), ...
               [0 end_time], ...
               initial_values, ...
               []);
           
           
plot(t,100.*((y(:,6)+ y(:,7))./(y(:,5) + y(:,6) + y(:,7) + y(:,8))));

xlabel('time');
 ylabel('prevalance');
 title('dengue prevalance');

% fun = (b.*fbetamt(temp(t)).*y(:,2).*y(:,7) )./(y(:,5) + y(:,6) + y(:,7) + y(:,8));
% q = integral(fun,2555,2920);
% disp(q);


% plot(t,100.*(y(:,6)+ y(:,7))  );
% 
% xlabel('time');
%  ylabel('prevalance');
%  title('dengue prevalance');
%  
%  
% 
% subplot(4,2,1)
% 
% plot(t, y(:,1));
% xlabel('time');
% ylabel('A');
% title('change in aquatic mosquito population');
% 
% subplot(4,2,2)
% 
%  plot(t, y(:,2));
%  xlabel('time');
%  ylabel('Ms');
% title('change in susceptible Mosquitoes'); 
% subplot(4,2,3)
% 
%  plot(t, y(:,3));
%  xlabel('time');
%  ylabel('Me');
% title('change in exposed mosquitoes'); 
% subplot(4,2,4)
% 
% plot(t, y(:,4));
% xlabel('time');
% ylabel('Mi');
% title('change in infected Mosquitoes');
% subplot(4,2,5)
% 
% plot(t, y(:,5));
%  xlabel('time');
%  ylabel('Hs');
% title('change in susciptible humans'); 
% subplot(4,2,6)
% 
%  plot(t, y(:,6));
%  xlabel('time');
%  ylabel('He');
% title('change in exposed humans'); 
% subplot(4,2,7)
% 
% plot(t, y(:,7));
% xlabel('time');
% ylabel('Hi');
% title('change in infected humans');
% 
% subplot(4,2,8)
% 
% plot(t, y(:,8));
% xlabel('time');
% ylabel('Hr');
% title('change in recovered humans');
% 
% % 
% % 
% 
