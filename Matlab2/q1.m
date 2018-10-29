yp_max = 0;
x_max = -7;
y_max = -7;

for x = -6:0.1:6
    for y = -6:0.1:6
        if (x - 5*y)/(x^2 + y^2 + 12*x - 12*y +30) > yp_max
            x_max = x;
            y_max = y;
            yp_max = (x - 5*y)/(x^2 + y^2 + 12*x - 12*y +30);
        end
    end
end