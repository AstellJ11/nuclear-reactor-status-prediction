function [finalMode] = nuclearMode(column)

temp = 0;
freq = 0;
finalMode = 0;
modeLength = length(column);
for i = 1:modeLength
        for j = i:modeLength
            if column(i) == column(j)
                temp = temp + 1;                   
                if freq < temp              
                    freq = temp; 
                    finalMode = column(i);
                end
            end           
        end       
        temp = 0;
        
end

end