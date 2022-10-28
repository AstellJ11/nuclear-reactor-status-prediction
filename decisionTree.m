% Section II: Task 5:
% Training a decision tree 

% Pre-processing data
modelTrainingDataX = TrainingDataset(:,2:end);
modelTrainingDataX = cell2mat(modelTrainingDataX);

modelTrainingDataY = TrainingDataset(:,1);

modelTestingDataInput = TestingDataset(:,2:end);
modelTestingDataInput = cell2mat(modelTestingDataInput);


% Training model
mdl = fitctree(modelTrainingDataX, modelTrainingDataY);

% view(mdl, 'mode', 'graph')

% Prediction
treeModelTestingDataOutput = predict(mdl, modelTestingDataInput);



% True Positive, True Negitive, False Positive, False Negitive
% Normal is positive class, Abnormal is negitive class
% If both normal = TP
% If both abnormal = TN
% If output abnormal but input normal = FP
% If output normal but input abnormal = FN
modelTestingDataActual = TestingDataset(:,1);

TP = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Normal" && treeModelTestingDataOutput(n)=="Normal")
        TP = TP + 1;
    end
end
TN = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Abnormal" && treeModelTestingDataOutput(n)=="Abnormal")
        TN = TN + 1;
    end
end
FP = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Normal" && treeModelTestingDataOutput(n)=="Abnormal")
        FP = FP + 1;
    end
end
FN = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Abnormal" && treeModelTestingDataOutput(n)=="Normal")
        FN = FN + 1;
    end
end

% Error rate
% treeCorrect = 0;
% for n = 1: length(modelTestingDataActual)
%     if isequal(modelTestingDataActual(n), modelTestingDataOutput(n))
%         treeCorrect = treeCorrect + 1;
%     end
% end
% 
% treeErrorRate2 = (length(modelTestingDataActual) - treeCorrect) / length(modelTestingDataActual) * 100;

% (FP + FN) / total
treeErrorRate = ((FP + FN) / length(modelTestingDataActual)) * 100;

% Sensitivity
% TP / (TP + FN)
treeSensitivity = (TP / (TP + FN)) * 100;

% Specificity
% TN / (TN + FP)
treeSpecificity = (TN / (TN + FP)) * 100;
