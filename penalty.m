[X,Y] = meshgrid(-3:.1:3);
R = sqrt(X.^2 + Y.^2);
Z = 5.0 * (R < 1);
surf(Z);