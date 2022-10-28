% Section II: Task 5:
% Training a artifical neural network

% Pre-processing
inputs = TrainingDataset(:,2:end);
inputs = cell2mat(inputs)';

% Change training data to binary array
% Normal = 1, abnormal = 0
normalPos = "Normal";
abnormalPos = "Abnormal";
clear targets;
for p = 1:length(TrainingDataset)
    if TrainingDataset(p,1) == normalPos
        targets{p} = 1;
    elseif TrainingDataset(p,1) == abnormalPos
        targets{p} = 0;
    end
end
targets = cell2mat(targets);


% Construct and train the ANN
net = feedforwardnet(10);  % Hidden layer size using feedforwardnet
[net,tr] = train(net, inputs, targets);

% Input the testing data into the pre-trained model
modelTestingDataInputT = modelTestingDataInput';
ANNTestingDataOutput = net(modelTestingDataInputT);
nntraintool('close')



% Processing actual testing data for comparison
for q = 1:length(ANNTestingDataOutput)
    ANNTestingDataOutput(q) = round(ANNTestingDataOutput(q));
end
for r = 1:length(modelTestingDataActual)
    if modelTestingDataActual(r,1) == normalPos
        modelTestingDataBinary{r} = 1;
    elseif modelTestingDataActual(r,1) == abnormalPos
        modelTestingDataBinary{r} = 0;
    end
end
modelTestingDataBinary = cell2mat(modelTestingDataBinary);
modelTestingDataBinary = modelTestingDataBinary';
ANNTestingDataOutput = ANNTestingDataOutput';



% True Positive, True Negitive, False Positive, False Negitive
TP = 0;
for n = 1: length(modelTestingDataBinary)
    if (modelTestingDataBinary(n)==1 && ANNTestingDataOutput(n)==1)
        TP = TP + 1;
    end
end
TN = 0;
for n = 1: length(modelTestingDataBinary)
    if (modelTestingDataBinary(n)==0 && ANNTestingDataOutput(n)==0)
        TN = TN + 1;
    end
end
FP = 0;
for n = 1: length(modelTestingDataBinary)
    if (modelTestingDataBinary(n)==1 && ANNTestingDataOutput(n)==0)
        FP = FP + 1;
    end
end
FN = 0;
for n = 1: length(modelTestingDataBinary)
    if (modelTestingDataBinary(n)==0 && ANNTestingDataOutput(n)==1)
        FN = FN + 1;
    end
end

% Error rate
% (FP + FN) / total
ANNErrorRate = ((FP + FN) / length(modelTestingDataBinary)) * 100;

% Sensitivity
% TP / (TP + FN)
ANNSensitivity = (TP / (TP + FN)) * 100;

% Specificity
% TN / (TN + FP)
ANNSpecificity = (TN / (TN + FP)) * 100;



% Create table of evaluation measures
evaluationMeasure = {'Error rate'; 'Sensitivity'; 'Specificity'};
evaluationTree = [treeErrorRate; treeSensitivity; treeSpecificity];
evaluationSVM = [supportErrorRate; supportSensitivity; supportSpecificity];
evaluationANN = [ANNErrorRate; ANNSensitivity; ANNSpecificity];

T = table(evaluationMeasure);    % Creation of table
T.('Decision Tree') = evaluationTree; 
T.('Support Vector Machine Model') = evaluationSVM;
T.('Artificial Neural Network') = evaluationANN % Allow the use of multiple words in the table heading
