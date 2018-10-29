[x, y] = meshgrid(-5:0.2:5);

a = ones(size(x));
b = sin(x.^4/5 + 6*exp(-y.^2/10));

ascaled = a./sqrt(a.^2+b.^2);
bscaled = b./sqrt(a.^2+b.^2);

quiver(x,y,ascaled,bscaled)
axis equal;
title("Direction Field Example for y'(x) = sin(x.^4/5 + 6*exp(-y.^2/10))");
xlabel('x');
ylabel('y');