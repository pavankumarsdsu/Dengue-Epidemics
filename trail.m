
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


%lambda = 0.2;
n = 0;
ss = 0;
%ss = [];
%eigenvalues = [];
% The main loop generating the linear operator%



 for lambda = 13.54:13.54
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
 

disp('max eigen value');
disp( real(ss));
disp('lambda value');
disp(real(lambda));

end



disp("done");



