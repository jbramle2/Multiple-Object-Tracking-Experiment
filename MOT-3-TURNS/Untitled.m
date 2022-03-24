X = -10:10;


for C = 1:5
    Y(:,C) = X.^2+C;
end

plot(Y)


