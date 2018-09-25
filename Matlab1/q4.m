h = 0.01;

N = round(17/h); %determine the number linearizations to be carried out

x = zeros(1, N+1);
y = zeros(1, N+1);

x(1) = 0;
y(1) = 3.39; 

for n = 1:N % linearization for y1
    x(n+1) = x(n) + h; %update the next x
    y(n+1) = y(n) + h*(-y(n)/sqrt(3.4^2-(y(n))^2)); %linearization
end

plot(x,y,'r'); % plotting
title('Guy-Jacques Isombe, 400137397'); % figure's title
xlabel('x'); ylabel('y'); % and axis labels