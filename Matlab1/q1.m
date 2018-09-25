h = 0.4;

N = round(2/h); %determine the number linearizations to be carried out

x = zeros(1, N+1);
y = zeros(1, N+1);

x(1) = 0;
y(1) = 4; 

for n = 1:N % linearization for y1
    x(n+1) = x(n) + h; %update the next x
    y(n+1) = y(n) + h*(y(n)*(x(n))^2/3); %linearization
end