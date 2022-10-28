function [finalMedian] = nuclearMedian(column)

medLength = length(column);
i = (medLength+1)/2;  % Number of elements + 1
finalMedian = (column(floor(i)) + column(ceil(i))) /2;  % Rounds if odd median value;

end
