function [finalPMCC] = nuclearPMCC(column1, column2)

mean1 = nuclearMean(column1);
mean2 = nuclearMean(column2);

Sxy = 0;
for j = 1:length(column1)
   Sxy = Sxy + ((column1(j) - mean1) * (column2(j) - mean2));
end

Sxx = 0;
for j = 1:length(column1)
   Sxx = Sxx + ((column1(j) - mean1)^2);
end

Syy = 0;
for j = 1:length(column2)
   Syy = Syy + ((column2(j) - mean2)^2);
end

finalPMCC = Sxy / sqrt((Sxx * Syy)); 

end
