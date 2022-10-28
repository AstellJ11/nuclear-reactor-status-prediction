function [sorted] = bubbleSort(sorted)

C = numel(sorted);        % Find the number of elements in the array
for j = 0 : C-1
    for i = 1: C-j-1
        if sorted(i)>sorted(i+1)        % Compare two positions next to each other
            temp = sorted(i);
            sorted(i) = sorted(i+1);
            sorted(i+1) = temp;       % If the value is less swap the positions
        end
    end
end

end
