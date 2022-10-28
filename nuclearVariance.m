function [finalVariance] = nuclearVariance(column, mean)

for i = 1:length(column)
        distance = (column - mean).^2;      % Loop to find the distance between each number (xi - mu) all squared
end

VTotal = 0;
for i = 1:length(distance)
    VTotal = VTotal + distance(i);      % Sum of the distances
end

finalVariance = VTotal/(length(column)-1);    % Final SD calc. Use n-1 because of Bessel's correction 

end
