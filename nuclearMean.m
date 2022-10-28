function [finalMean] = nuclearMean(column)

meanSum = 0;
for i = 1:length(column)
    meanSum = meanSum + column(i);
end

finalMean = meanSum / length(column);

end
