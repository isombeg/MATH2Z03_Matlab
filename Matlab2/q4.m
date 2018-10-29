[x, y] = meshgrid(-2:0.2:2,-1:0.2:3);

a = ones(size(x));
b = [exp(-2.2*x) - 2.3*y];

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled);
hold on;
plot(-2:0.2:2,10*exp(-2.2*[-2:0.2:2])- 8*exp(-2.3*[-2:0.2:2]),'r','LineWidth', 2);
hold off;

axis([-2 2 -1 3]);
title("Guy-Jacques Isombe 400137394");
xlabel('x');
ylabel('y');
