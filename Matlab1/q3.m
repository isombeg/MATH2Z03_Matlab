%All step sizes requested by the question
h1 = 0.4;
h2 = 0.2;
h3 = 0.1;

N1 = round(2/h1); %determine the number linearizations to be carried out
N2 = round(2/h2);
N3 = round(2/h3);

x = zeros(1, N+1);
y = zeros(1, N+1);

x1(1) = 0; x2(1) = 0; x3(1) = 0;
y1(1) = 4; y2(1) = 4; y3(1) = 4;

for n = 1:N1 % linearization for y1
    x1(n+1) = x1(n) + h1; %update the next x
    y1(n+1) = y1(n) + h1*(y1(n)*(x1(n))^2/3); %linearization
end

for n = 1:N2 % linearization for y2
    x2(n+1) = x2(n) + h2; %update the next x
    y2(n+1) = y2(n) + h2*(y2(n)*(x2(n))^2/3); %linearization
end

for n = 1:N3 % linearization for y3
    x3(n+1) = x3(n) + h3; %update the next x
    y3(n+1) = y3(n) + h3*(y3(n)*(x3(n))^2/3); %linearization
end

yExact = 4*exp(x3.^3/9); %exact solution

plot(x3,yExact,'r',x1,y1,'b',x2,y2,'g',x3,y3,'y'); % plotting
title('Guy-Jacques Isombe, 400137397'); % figure's title
legend('exact solution','step-size 0.4 approximation','step-size 0.2 approximation','step-size 0.1 approximation'); % legend
xlabel('x'); ylabel('y'); % and axis labels