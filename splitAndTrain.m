% Section II: Task 4:
% Shuffle data and split into training and testing sets

clear;
clc;

filename = 'nuclear_plants_small_dataset.csv';
datasetTable = readtable(filename);
originalDatasetTable = readtable(filename);

% Get table headers 
fieldnames(datasetTable);
headers = datasetTable.Properties.VariableNames;

datasetTable(:,1) = [];

datasetTable = table2cell(datasetTable);

% Shuffling data
status1 = originalDatasetTable(:,1);
column1 = datasetTable(:,1);
column2 = datasetTable(:,2);
column3 = datasetTable(:,3);
column4 = datasetTable(:,4);

column5 = datasetTable(:,5);
column6 = datasetTable(:,6);
column7 = datasetTable(:,7);
column8 = datasetTable(:,8);

column9 = datasetTable(:,9);
column10 = datasetTable(:,10);
column11 = datasetTable(:,11);
column12 = datasetTable(:,12);

status1 = table2cell(status1);  % Covert to cell to allow to be added into new cell array

for l = 1:length(datasetTable(:,1))
    nuclearShuffle = randi(length(column1));  %Generates random numbers from the changing length of the array
    
    status1Shuffled(l,1) = status1(nuclearShuffle,1);  % Take the random number row and insert into into the new variable
    column1Shuffled(l,1) = column1(nuclearShuffle,1);   
    column2Shuffled(l,1) = column2(nuclearShuffle,1);
    column3Shuffled(l,1) = column3(nuclearShuffle,1);
    column4Shuffled(l,1) = column4(nuclearShuffle,1);
    
    column5Shuffled(l,1) = column5(nuclearShuffle,1);
    column6Shuffled(l,1) = column6(nuclearShuffle,1);
    column7Shuffled(l,1) = column7(nuclearShuffle,1);
    column8Shuffled(l,1) = column8(nuclearShuffle,1);
    
    column9Shuffled(l,1) = column9(nuclearShuffle,1);
    column10Shuffled(l,1) = column10(nuclearShuffle,1);
    column11Shuffled(l,1) = column11(nuclearShuffle,1);
    column12Shuffled(l,1) = column12(nuclearShuffle,1);
    
    status1(nuclearShuffle) = [];
    column1(nuclearShuffle) = [];
    column2(nuclearShuffle) = [];
    column3(nuclearShuffle) = [];
    column4(nuclearShuffle) = [];
    
    column5(nuclearShuffle) = [];
    column6(nuclearShuffle) = [];
    column7(nuclearShuffle) = [];
    column8(nuclearShuffle) = [];
    
    column9(nuclearShuffle) = [];
    column10(nuclearShuffle) = [];
    column11(nuclearShuffle) = [];
    column12(nuclearShuffle) = [];
end

shuffledDataset = (headers);
shuffledDataset = [shuffledDataset; status1Shuffled(:), column1Shuffled(:), column2Shuffled(:) ,column3Shuffled(:) ,column4Shuffled(:) ,column5Shuffled(:) ,column6Shuffled(:) ,column7Shuffled(:) ,column8Shuffled(:) ,column9Shuffled(:) ,column10Shuffled(:) ,column11Shuffled(:) ,column12Shuffled(:)];

clear column1 + column2 + column3 + column4 + column5 + column6 + column7 + column8 + column9 + column10 + column11 + column12 + status1



% Splitting Data
temp = shuffledDataset(2:end,:);  % Remove the variable headings

trainingLoop = round((length(temp(:,1)) - 1) * 0.7);  % Getting the size required for the training/testing loops
testingLoop = round((length(temp(:,1)) - 1) * 0.3);

for k = 1:trainingLoop
    status1Training(k,1) = status1Shuffled(k,1);
    column1Training(k,1) = column1Shuffled(k,1);
    column2Training(k,1) = column2Shuffled(k,1);
    column3Training(k,1) = column3Shuffled(k,1);
    column4Training(k,1) = column4Shuffled(k,1);
    
    column5Training(k,1) = column5Shuffled(k,1);
    column6Training(k,1) = column6Shuffled(k,1);
    column7Training(k,1) = column7Shuffled(k,1);
    column8Training(k,1) = column8Shuffled(k,1);
    
    column9Training(k,1) = column9Shuffled(k,1);
    column10Training(k,1) = column10Shuffled(k,1);
    column11Training(k,1) = column11Shuffled(k,1);
    column12Training(k,1) = column12Shuffled(k,1);

end

TrainingDataset = [status1Training, column1Training, column2Training, column3Training, column4Training, column5Training, column6Training, column7Training, column8Training, column9Training, column10Training, column11Training, column12Training];

k = trainingLoop + 1;
for m = 1:testingLoop
   status1Testing(m,1) = status1Shuffled(k,1);
   column1Testing(m,1) = column1Shuffled(k,1);
   column2Testing(m,1) = column2Shuffled(k,1);
   column3Testing(m,1) = column3Shuffled(k,1);
   column4Testing(m,1) = column4Shuffled(k,1);
   
   column5Testing(m,1) = column5Shuffled(k,1);
   column6Testing(m,1) = column6Shuffled(k,1);
   column7Testing(m,1) = column7Shuffled(k,1);
   column8Testing(m,1) = column8Shuffled(k,1);
   
   column9Testing(m,1) = column9Shuffled(k,1);
   column10Testing(m,1) = column10Shuffled(k,1);
   column11Testing(m,1) = column11Shuffled(k,1);
   column12Testing(m,1) = column12Shuffled(k,1);
   
   k = k + 1;
end

TestingDataset = [status1Testing, column1Testing, column2Testing, column3Testing, column4Testing, column5Testing, column6Testing, column7Testing, column8Testing, column9Testing, column10Testing, column11Testing, column12Testing];

clear column1Shuffled + column2Shuffled + column3Shuffled + column4Shuffled + column5Shuffled + column6Shuffled + column7Shuffled + column8Shuffled + column9Shuffled + column10Shuffled + column11Shuffled + column12Shuffled + status1Shuffled
clear column1Training + column2Training + column3Training + column4Training + column5Training + column6Training + column7Training + column8Training + column9Training + column10Training + column11Training + column12Training + status1Training
clear column1Testing + column2Testing + column3Testing + column4Testing + column5Testing + column6Testing + column7Testing + column8Testing + column9Testing + column10Testing + column11Testing + column12Testing + status1Testing



% Finding the amount of normal and abnormal values in training and testing
trainNormalCount = 0;
for n = 1: length(TrainingDataset)
    if (TrainingDataset(n)=="Normal" && TrainingDataset(n)=="Normal")
       trainNormalCount = trainNormalCount + 1;
    end
end
trainAbnormalCount = 0;
for n = 1: length(TrainingDataset)
    if (TrainingDataset(n)=="Abnormal" && TrainingDataset(n)=="Abnormal")
       trainAbnormalCount = trainAbnormalCount + 1;
    end
end

trainNormalCount;
trainAbnormalCount;


testNormalCount = 0;
for n = 1: length(TestingDataset)
    if (TestingDataset(n)=="Normal" && TestingDataset(n)=="Normal")
       testNormalCount = testNormalCount + 1;
    end
end
testAbnormalCount = 0;
for n = 1: length(TestingDataset)
    if (TestingDataset(n)=="Abnormal" && TestingDataset(n)=="Abnormal")
       testAbnormalCount = testAbnormalCount + 1;
    end
end

testNormalCount;
testAbnormalCount;

totalCheck = trainNormalCount + trainAbnormalCount + testNormalCount + testAbnormalCount;
