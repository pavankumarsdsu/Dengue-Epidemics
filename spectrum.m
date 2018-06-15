
% Program to find out the basic reproductive number %
% tspan%
end_time1 = 365;
% initializing the four DE%
initialw1.I = 1;
initialw1.J = 0;

initialw2.I = 0;
initialw2.J = 1;

w1initial_values = [];
w2initial_values = [];


w1variable_names = fieldnames(initialw1);
w2variable_names = fieldnames(initialw2);


for i=1:length(w1variable_names) 
    w1initial_values = [w1initial_values; initialw1.(w1variable_names{i})];
end

for i=1:length(w2variable_names) 
    w2initial_values = [w2initial_values; initialw2.(w2variable_names{i})];
end


lambda = 0.8;
n = 0;
ss = 0;
%ss = [];
%eigenvalues = [];
% The main loop generating the linear operator%

while(abs(ss-1)>0.1 & n < 200)

 lambda = (lambda + 0.1);   

[t, w1] = ode45(@(t, x) ode_system4(t, x, lambda), ...
               [0:1:end_time1], ...
               w1initial_values, ...
               []);

[t, w2] = ode45(@(t, x) ode_system4(t, x, lambda), ...
               [0:1:end_time1], ...
               w2initial_values, ...
               []);
           

w = [(w1(end,:))' w2(end,:)'];
ss = max(eig(w));
n = n+1;
end


%plotting%

disp("done");
disp("max eigen value");
disp(real(ss));
disp(" lambda");
disp(real(lambda));
% plot(t,w);
% xlabel('time');
% ylabel('spectrum');


% plot(t, w1);
% xlabel('time');
% ylabel('spectrum');

% plot(t, w2,'--');
% xlabel('time');
% ylabel('spectrum');
% 
% plot(t, w3, ':');
% xlabel('time');
% ylabel('spectrum');
% 
% plot(t, w4,'*');
% xlabel('time');
% ylabel('spectrum');
% 
% plot(t, w1,t,w2,t,w3,t,w4);
% xlabel('time');
% ylabel('spectrum');







