% Section II: Task 8:
% Use MapReduce to find the minimum, maxiumum and mean 

ds = datastore('nuclear_plants_big_dataset.csv');  % Load the dataset into a datastore

% Start parallel pool using 2 workers
delete(gcp('nocreate'))
p = parpool('local', 2);
inPool = mapreducer(p);

ds.SelectedVariableNames = {'Power_range_sensor_1'};
PRS1Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PRS1Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PRS1Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PRS1Mean), readall(PRS1Min), readall(PRS1Max)

ds.SelectedVariableNames = {'Power_range_sensor_2'};
PRS2Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PRS2Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PRS2Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PRS2Mean), readall(PRS2Min), readall(PRS2Max)

ds.SelectedVariableNames = {'Power_range_sensor_3'};
PRS3Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PRS3Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PRS3Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PRS3Mean), readall(PRS3Min), readall(PRS3Max)

ds.SelectedVariableNames = {'Power_range_sensor_4'};
PRS4Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PRS4Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PRS4Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PRS4Mean), readall(PRS4Min), readall(PRS4Max)


ds.SelectedVariableNames = {'Pressure_sensor_1'};
PS1Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PS1Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PS1Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PS1Mean), readall(PS1Min), readall(PS1Max)

ds.SelectedVariableNames = {'Pressure_sensor_2'};
PS2Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PS2Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PS2Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PS2Mean), readall(PS2Min), readall(PS2Max)

ds.SelectedVariableNames = {'Pressure_sensor_3'};
PS3Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PS3Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PS3Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PS3Mean), readall(PS3Min), readall(PS3Max)

ds.SelectedVariableNames = {'Pressure_sensor_4'};
PS4Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
PS4Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
PS4Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(PS4Mean), readall(PS4Min), readall(PS4Max)


ds.SelectedVariableNames = {'Vibration_sensor_1'};
VS1Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
VS1Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
VS1Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(VS1Mean), readall(VS1Min), readall(VS1Max)

ds.SelectedVariableNames = {'Vibration_sensor_2'};
VS2Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
VS2Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
VS2Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(VS2Mean), readall(VS2Min), readall(VS2Max)

ds.SelectedVariableNames = {'Vibration_sensor_3'};
VS3Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
VS3Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
VS3Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(VS3Mean), readall(VS3Min), readall(VS3Max)

ds.SelectedVariableNames = {'Vibration_sensor_4'};
VS4Mean = mapreduce(ds, @meanMapper, @meanReducer, 'OutputFolder', 'mapReduceOutputs');
VS4Min = mapreduce(ds, @minMapper, @minReducer, 'OutputFolder', 'mapReduceOutputs');
VS4Max = mapreduce(ds, @maxMapper, @maxReducer, 'OutputFolder', 'mapReduceOutputs');
readall(VS4Mean), readall(VS4Min), readall(VS4Max)



function meanMapper (data, info, intermKVStore)
  % Find the counts and sums and total them
  loadedData = data{:,:}(~isnan(data{:,:}));
  partCountTotal = [length(loadedData), sum(loadedData)];
  add(intermKVStore, "PartialCountSumDelay", partCountTotal);
end

function meanReducer(intermKey, intermValIter, outKVStore)
  count = 0;
  sum = 0;
  while hasnext(intermValIter)
    countSum = getnext(intermValIter);
    count = count + countSum(1);
    sum = sum + countSum(2);
  end
  meanFinal = sum/count;

  % The key-value pair added to outKVStore will become the output of mapreduce 
  add(outKVStore, "Mean", meanFinal);
end



function minMapper (data, info, intermKVStore)
  loadedData = data{:,:}(~isnan(data{:,:}));
  partMin = min(loadedData);
  add(intermKVStore, 'PartialMinArrivalDelay', partMin);
end

function minReducer (intermKey, intermValIter, outKVStore)
  minVal = Inf;
  while hasnext(intermValIter)
    minVal = min(getnext(intermValIter), minVal);
  end
  
  % The key-value pair added to outKVStore will become the output of mapreduce 
  add(outKVStore, 'Min', minVal);
end



function maxMapper (data, info, intermKVStore)
  loadedData = data{:,:}(~isnan(data{:,:}));
  partMax = max(loadedData);
  add(intermKVStore, 'PartialMaxArrivalDelay', partMax);
end

function maxReducer (intermKey, intermValIter, outKVStore)
  maxVal = -Inf;
  while hasnext(intermValIter)
    maxVal = max(getnext(intermValIter), maxVal);
  end
  
  % The key-value pair added to outKVStore will become the output of mapreduce 
  add(outKVStore, 'Max', maxVal);
end

% -----------------------------------------------------
% Code for mean function derivied from: 
% https://www.mathworks.com/help/matlab/import_export/compute-mean-value-with-mapreduce.html

% Code for min and max function derivied from:
% https://www.mathworks.com/help/matlab/import_export/find-maximum-value-with-mapreduce.html
% -----------------------------------------------------
