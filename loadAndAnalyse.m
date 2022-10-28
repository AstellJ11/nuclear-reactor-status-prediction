% Section I: Task 2:
% Load the dataset as well as perfrom statisical analysis on both groups

% Load the file and create the entire table
filename = 'nuclear_plants_small_dataset.csv';
datasetTable = readtable(filename);

% Split the table into the normal and abnormal group
normalGroup = datasetTable(datasetTable.Status=="Normal",:);
abnormalGroup = datasetTable(datasetTable.Status=="Abnormal",:);

% Remove the char variables in the first column of each tabel to allow
% for easy mathematical manipulation
datasetTable(:,1) = [];
normalGroup(:,1) = [];
abnormalGroup(:,1) = [];

% Converts table to cell array, then to double array
datasetTable = table2cell(datasetTable);
datasetTable = cell2mat(datasetTable);

normalGroup = table2cell(normalGroup);
normalGroup = cell2mat(normalGroup);

abnormalGroup = table2cell(abnormalGroup);
abnormalGroup = cell2mat(abnormalGroup); 



% Sorted values for both tables
Nsorted1 = bubbleSort(normalGroup(:,1));  % Use the bubbleSort function
Nsorted2 = bubbleSort(normalGroup(:,2));
Nsorted3 = bubbleSort(normalGroup(:,3));
Nsorted4 = bubbleSort(normalGroup(:,4));

Nsorted5 = bubbleSort(normalGroup(:,5));
Nsorted6 = bubbleSort(normalGroup(:,6));
Nsorted7 = bubbleSort(normalGroup(:,7));
Nsorted8 = bubbleSort(normalGroup(:,8));

Nsorted9 = bubbleSort(normalGroup(:,9));
Nsorted10 = bubbleSort(normalGroup(:,10));
Nsorted11 = bubbleSort(normalGroup(:,11));
Nsorted12 = bubbleSort(normalGroup(:,12));


Asorted1 = bubbleSort(abnormalGroup(:,1));
Asorted2 = bubbleSort(abnormalGroup(:,2));
Asorted3 = bubbleSort(abnormalGroup(:,3));
Asorted4 = bubbleSort(abnormalGroup(:,4));

Asorted5 = bubbleSort(abnormalGroup(:,5));
Asorted6 = bubbleSort(abnormalGroup(:,6));
Asorted7 = bubbleSort(abnormalGroup(:,7));
Asorted8 = bubbleSort(abnormalGroup(:,8));

Asorted9 = bubbleSort(abnormalGroup(:,9));
Asorted10 = bubbleSort(abnormalGroup(:,10));
Asorted11 = bubbleSort(abnormalGroup(:,11));
Asorted12 = bubbleSort(abnormalGroup(:,12));



% Minimum values for both tables
Npower1Min = Nsorted1(1);
Npower2Min = Nsorted2(1);
Npower3Min = Nsorted3(1);
Npower4Min = Nsorted4(1);

Npressure1Min = Nsorted5(1);
Npressure2Min = Nsorted6(1);
Npressure3Min = Nsorted7(1);
Npressure4Min = Nsorted8(1);

Nvibration1Min = Nsorted9(1);
Nvibration2Min = Nsorted10(1);
Nvibration3Min = Nsorted11(1);
Nvibration4Min = Nsorted12(1);


Apower1Min = Asorted1(1);
Apower2Min = Asorted2(1);
Apower3Min = Asorted3(1);
Apower4Min = Asorted4(1);

Apressure1Min = Asorted5(1);
Apressure2Min = Asorted6(1);
Apressure3Min = Asorted7(1);
Apressure4Min = Asorted8(1);

Avibration1Min = Asorted9(1);
Avibration2Min = Asorted10(1);
Avibration3Min = Asorted11(1);
Avibration4Min = Asorted12(1);



% Maximum values for both tables
maxLength = length(Nsorted1);  % Looks for the final value in the sorted array
Npower1Max = Nsorted1(maxLength);
Npower2Max = Nsorted2(maxLength);
Npower3Max = Nsorted3(maxLength);
Npower4Max = Nsorted4(maxLength);

Npressure1Max = Nsorted5(maxLength);
Npressure2Max = Nsorted6(maxLength);
Npressure3Max = Nsorted7(maxLength);
Npressure4Max = Nsorted8(maxLength);

Nvibration1Max = Nsorted9(maxLength);
Nvibration2Max = Nsorted10(maxLength);
Nvibration3Max = Nsorted11(maxLength);
Nvibration4Max = Nsorted12(maxLength);


Apower1Max = Asorted1(maxLength);
Apower2Max = Asorted2(maxLength);
Apower3Max = Asorted3(maxLength);
Apower4Max = Asorted4(maxLength);

Apressure1Max = Asorted5(maxLength);
Apressure2Max = Asorted6(maxLength);
Apressure3Max = Asorted7(maxLength);
Apressure4Max = Asorted8(maxLength);

Avibration1Max = Asorted9(maxLength);
Avibration2Max = Asorted10(maxLength);
Avibration3Max = Asorted11(maxLength);
Avibration4Max = Asorted12(maxLength);



% Mean values for both tables
Npower1Mean = nuclearMean(normalGroup(:,1));  % Use the nuclearMean function
Npower2Mean = nuclearMean(normalGroup(:,2));
Npower3Mean = nuclearMean(normalGroup(:,3));
Npower4Mean = nuclearMean(normalGroup(:,4));

Npressure1Mean = nuclearMean(normalGroup(:,5));
Npressure2Mean = nuclearMean(normalGroup(:,6));
Npressure3Mean = nuclearMean(normalGroup(:,7));
Npressure4Mean = nuclearMean(normalGroup(:,8));

Nvibration1Mean = nuclearMean(normalGroup(:,9));
Nvibration2Mean = nuclearMean(normalGroup(:,10));
Nvibration3Mean = nuclearMean(normalGroup(:,11));
Nvibration4Mean = nuclearMean(normalGroup(:,12));


Apower1Mean = nuclearMean(abnormalGroup(:,1));
Apower2Mean = nuclearMean(abnormalGroup(:,2));
Apower3Mean = nuclearMean(abnormalGroup(:,3));
Apower4Mean = nuclearMean(abnormalGroup(:,4));

Apressure1Mean = nuclearMean(abnormalGroup(:,5));
Apressure2Mean = nuclearMean(abnormalGroup(:,6));
Apressure3Mean = nuclearMean(abnormalGroup(:,7));
Apressure4Mean = nuclearMean(abnormalGroup(:,8));

Avibration1Mean = nuclearMean(abnormalGroup(:,9));
Avibration2Mean = nuclearMean(abnormalGroup(:,10));
Avibration3Mean = nuclearMean(abnormalGroup(:,11));
Avibration4Mean = nuclearMean(abnormalGroup(:,12));



% Median values for both tables 
Npower1Median = nuclearMedian(Nsorted1);  % Use the nuclearMedian function
Npower2Median = nuclearMedian(Nsorted2);
Npower3Median = nuclearMedian(Nsorted3);
Npower4Median = nuclearMedian(Nsorted4);

Npressure1Median = nuclearMedian(Nsorted5);
Npressure2Median = nuclearMedian(Nsorted6);
Npressure3Median = nuclearMedian(Nsorted7);
Npressure4Median = nuclearMedian(Nsorted8);

Nvibration1Median = nuclearMedian(Nsorted9);
Nvibration2Median = nuclearMedian(Nsorted10);
Nvibration3Median = nuclearMedian(Nsorted11);
Nvibration4Median = nuclearMedian(Nsorted12);


Apower1Median = nuclearMedian(Asorted1);
Apower2Median = nuclearMedian(Asorted2);
Apower3Median = nuclearMedian(Asorted3);
Apower4Median = nuclearMedian(Asorted4);

Apressure1Median = nuclearMedian(Asorted5);
Apressure2Median = nuclearMedian(Asorted6);
Apressure3Median = nuclearMedian(Asorted7);
Apressure4Median = nuclearMedian(Asorted8);

Avibration1Median = nuclearMedian(Asorted9);
Avibration2Median = nuclearMedian(Asorted10);
Avibration3Median = nuclearMedian(Asorted11);
Avibration4Median = nuclearMedian(Asorted12);



% Mode values for both tables
Npower1Mode = nuclearMode(Nsorted1);  % Use the nuclearMode function
Npower2Mode = nuclearMode(Nsorted2);
Npower3Mode = nuclearMode(Nsorted3);
Npower4Mode = nuclearMode(Nsorted4);

Npressure1Mode = nuclearMode(Nsorted5);
Npressure2Mode = nuclearMode(Nsorted6);
Npressure3Mode = nuclearMode(Nsorted7);
Npressure4Mode = nuclearMode(Nsorted8);

Nvibration1Mode = nuclearMode(Nsorted9);
Nvibration2Mode = nuclearMode(Nsorted10);
Nvibration3Mode = nuclearMode(Nsorted11);
Nvibration4Mode = nuclearMode(Nsorted12);


Apower1Mode = nuclearMode(Asorted1);
Apower2Mode = nuclearMode(Asorted2);
Apower3Mode = nuclearMode(Asorted3);
Apower4Mode = nuclearMode(Asorted4);

Apressure1Mode = nuclearMode(Asorted5);
Apressure2Mode = nuclearMode(Asorted6);
Apressure3Mode = nuclearMode(Asorted7);
Apressure4Mode = nuclearMode(Asorted8);

Avibration1Mode = nuclearMode(Asorted9);
Avibration2Mode = nuclearMode(Asorted10);
Avibration3Mode = nuclearMode(Asorted11);
Avibration4Mode = nuclearMode(Asorted12);



% Variance values for both tables
Npower1Var = nuclearVariance(normalGroup(:,1), Npower1Mean);    % Use the nuclearVariance function
Npower2Var = nuclearVariance(normalGroup(:,2), Npower2Mean);
Npower3Var = nuclearVariance(normalGroup(:,3), Npower3Mean);
Npower4Var = nuclearVariance(normalGroup(:,4), Npower4Mean);

Npressure1Var = nuclearVariance(normalGroup(:,5), Npressure1Mean);
Npressure2Var = nuclearVariance(normalGroup(:,6), Npressure2Mean);
Npressure3Var = nuclearVariance(normalGroup(:,7), Npressure3Mean);
Npressure4Var = nuclearVariance(normalGroup(:,8), Npressure4Mean);

Nvibration1Var = nuclearVariance(normalGroup(:,9), Nvibration1Mean);
Nvibration2Var = nuclearVariance(normalGroup(:,10), Nvibration2Mean);
Nvibration3Var = nuclearVariance(normalGroup(:,11), Nvibration3Mean);
Nvibration4Var = nuclearVariance(normalGroup(:,12), Nvibration4Mean);


Apower1Var = nuclearVariance(abnormalGroup(:,1), Apower1Mean);
Apower2Var = nuclearVariance(abnormalGroup(:,2), Apower2Mean);
Apower3Var = nuclearVariance(abnormalGroup(:,3), Apower3Mean);
Apower4Var = nuclearVariance(abnormalGroup(:,4), Apower4Mean);

Apressure1Var = nuclearVariance(abnormalGroup(:,5), Apressure1Mean);
Apressure2Var = nuclearVariance(abnormalGroup(:,6), Apressure2Mean);
Apressure3Var = nuclearVariance(abnormalGroup(:,7), Apressure3Mean);
Apressure4Var = nuclearVariance(abnormalGroup(:,8), Apressure4Mean);

Avibration1Var = nuclearVariance(abnormalGroup(:,9), Avibration1Mean);
Avibration2Var = nuclearVariance(abnormalGroup(:,10), Avibration2Mean);
Avibration3Var = nuclearVariance(abnormalGroup(:,11), Avibration3Mean);
Avibration4Var = nuclearVariance(abnormalGroup(:,12), Avibration4Mean);



% Create normal statistics tabel
NVariable = {'Power_range_sensor_1'; 'Power_range_sensor_2'; 'Power_range_sensor_3'; 'Power_range_sensor_4'; 'Pressure_sensor_1'; 'Pressure_sensor_2'; 'Pressure_sensor_3'; 'Pressure_sensor_4'; 'Vibration_sensor_1'; 'Vibration_sensor_2'; 'Vibration_sensor_3'; 'Vibration_sensor_4'};
NMin = [Npower1Min; Npower2Min; Npower3Min; Npower4Min; Npressure1Min; Npressure2Min; Npressure3Min; Npressure4Min; Nvibration1Min; Nvibration2Min; Nvibration3Min; Nvibration4Min];
NMax = [Npower1Max; Npower2Max; Npower3Max; Npower4Max; Npressure1Max; Npressure2Max; Npressure3Max; Npressure4Max; Nvibration1Max; Nvibration2Max; Nvibration3Max; Nvibration4Max];
NMean = [Npower1Mean; Npower2Mean; Npower3Mean; Npower4Mean; Npressure1Mean; Npressure2Mean; Npressure3Mean; Npressure4Mean; Nvibration1Mean; Nvibration2Mean; Nvibration3Mean; Nvibration4Mean];
NMedian = [Npower1Median; Npower2Median; Npower3Median; Npower4Median; Npressure1Median; Npressure2Median; Npressure3Median; Npressure4Median; Nvibration1Median; Nvibration2Median; Nvibration3Median; Nvibration4Median];
NMode = [Npower1Mode; Npower2Mode; Npower3Mode; Npower4Mode; Npressure1Mode; Npressure2Mode; Npressure3Mode; Npressure4Mode; Nvibration1Mode; Nvibration2Mode; Nvibration3Mode; Nvibration4Mode];
NVariance = [Npower1Var; Npower2Var; Npower3Var; Npower4Var; Npressure1Var; Npressure2Var; Npressure3Var; Npressure4Var; Nvibration1Var; Nvibration2Var; Nvibration3Var; Nvibration4Var];

NormalTable = table(NVariable, NMin, NMax, NMean, NMedian, NMode, NVariance)


% Create abnormal statistics tabel
AVariable = {'Power_range_sensor_1'; 'Power_range_sensor_2'; 'Power_range_sensor_3'; 'Power_range_sensor_4'; 'Pressure_sensor_1'; 'Pressure_sensor_2'; 'Pressure_sensor_3'; 'Pressure_sensor_4'; 'Vibration_sensor_1'; 'Vibration_sensor_2'; 'Vibration_sensor_3'; 'Vibration_sensor_4'};
AMin = [Apower1Min; Apower2Min; Apower3Min; Apower4Min; Apressure1Min; Apressure2Min; Apressure3Min; Apressure4Min; Avibration1Min; Avibration2Min; Avibration3Min; Avibration4Min];
AMax = [Apower1Max; Apower2Max; Apower3Max; Apower4Max; Apressure1Max; Apressure2Max; Apressure3Max; Apressure4Max; Avibration1Max; Avibration2Max; Avibration3Max; Avibration4Max];
AMean = [Apower1Mean; Apower2Mean; Apower3Mean; Apower4Mean; Apressure1Mean; Apressure2Mean; Apressure3Mean; Apressure4Mean; Avibration1Mean; Avibration2Mean; Avibration3Mean; Avibration4Mean];
AMedian = [Apower1Median; Apower2Median; Apower3Median; Apower4Median; Apressure1Median; Apressure2Median; Apressure3Median; Apressure4Median; Avibration1Median; Avibration2Median; Avibration3Median; Avibration4Median];
AMode = [Apower1Mode; Apower2Mode; Apower3Mode; Apower4Mode; Apressure1Mode; Apressure2Mode; Apressure3Mode; Apressure4Mode; Avibration1Mode; Avibration2Mode; Avibration3Mode; Avibration4Mode];
AVariance = [Apower1Var; Apower2Var; Apower3Var; Apower4Var; Apressure1Var; Apressure2Var; Apressure3Var; Apressure4Var; Avibration1Var; Avibration2Var; Avibration3Var; Avibration4Var];

AbnormalTable = table(AVariable, AMin, AMax, AMean, AMedian, AMode, AVariance)
