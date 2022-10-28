% Section II: Task 5:
% Training a support vector machine model

% For best results:
% Standardize = True
% KernalFunction = RBF
% KernalScale = Auto
% Solver = ISDA (Default)

% Training model
SVMModel = fitcsvm(modelTrainingDataX, modelTrainingDataY, 'Standardize', true, 'KernelFunction', 'rbf', 'KernelScale', 'auto');

% Prediction
supportModelTestingDataOutput = predict(SVMModel, modelTestingDataInput);



% True Positive, True Negitive, False Positive, False Negitive
TP = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Normal" && supportModelTestingDataOutput(n)=="Normal")
        TP = TP + 1;
    end
end
TN = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Abnormal" && supportModelTestingDataOutput(n)=="Abnormal")
        TN = TN + 1;
    end
end
FP = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Normal" && supportModelTestingDataOutput(n)=="Abnormal")
        FP = FP + 1;
    end
end
FN = 0;
for n = 1: length(modelTestingDataActual)
    if (modelTestingDataActual(n)=="Abnormal" && supportModelTestingDataOutput(n)=="Normal")
        FN = FN + 1;
    end
end

% Error rate
% (FP + FN) / total
supportErrorRate = ((FP + FN) / length(modelTestingDataActual)) * 100;

% Sensitivity
% TP / (TP + FN)
supportSensitivity = (TP / (TP + FN)) * 100;

% Specificity
% TN / (TN + FP)
supportSpecificity = (TN / (TN + FP)) * 100;
