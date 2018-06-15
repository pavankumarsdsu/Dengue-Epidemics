function betamt = fbetamt(T)

global n;
global betamh;

% betamh = 18.9871*100;
% n = 7;

betamt = (T.^n)/(T.^n + (betamh).^n);
end