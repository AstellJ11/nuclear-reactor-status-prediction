% Section I: Task 2:
% Create box plots for each feature

% Box plots for normal group
boxplot(normalGroup(:,1));  % Box plot Power_range_sensor_1 for normal 
ylabel('Power Level');
title('Power_range_sensor_1 Under Normal Status', 'Interpreter', 'none');
print('plots/NPower_range_sensor_1', '-dpng');

boxplot(normalGroup(:,2));  % Box plot Power_range_sensor_2 for normal 
ylabel('Power Level');
title('Power_range_sensor_2 Under Normal Status', 'Interpreter', 'none');
print('plots/NPower_range_sensor_2', '-dpng');

boxplot(normalGroup(:,3));  % Box plot Power_range_sensor_3 for normal 
ylabel('Power Level');
title('Power_range_sensor_3 Under Normal Status', 'Interpreter', 'none');
print('plots/NPower_range_sensor_3', '-dpng');

boxplot(normalGroup(:,4));  % Box plot Power_range_sensor_4 for normal 
ylabel('Power Level');
title('Power_range_sensor_4 Under Normal Status', 'Interpreter', 'none');
print('plots/NPower_range_sensor_4', '-dpng');


boxplot(normalGroup(:,5));  % Box plot Pressure_sensor_1 for normal 
ylabel('Pressure Level');
title('Pressure_sensor_1 Under Normal Status', 'Interpreter', 'none');
print('plots/NPressure_sensor_1', '-dpng');

boxplot(normalGroup(:,6));  % Box plot Pressure_sensor_2 for normal 
ylabel('Pressure Level');
title('Pressure_sensor_2 Under Normal Status', 'Interpreter', 'none'); 
print('plots/NPressure_sensor_2', '-dpng');

boxplot(normalGroup(:,7));  % Box plot Pressure_sensor_3 for normal 
ylabel('Pressure Level');
title('Pressure_sensor_3 Under Normal Status', 'Interpreter', 'none');
print('plots/NPressure_sensor_3', '-dpng');

boxplot(normalGroup(:,8));  % Box plot Pressure_sensor_4 for normal 
ylabel('Pressure Level');
title('Pressure_sensor_4 Under Normal Status', 'Interpreter', 'none');
print('plots/NPressure_sensor_4', '-dpng');


boxplot(normalGroup(:,9));  % Box plot Vibration_sensor_1 for normal 
ylabel('Vibration Level');
title('Vibration_sensor_1 Under Normal Status', 'Interpreter', 'none');
print('plots/NVibration_sensor_1', '-dpng');

boxplot(normalGroup(:,10));  % Box plot Vibration_sensor_2 for normal 
ylabel('Vibration Level');
title('Vibration_sensor_2 Under Normal Status', 'Interpreter', 'none');
print('plots/NVibration_sensor_2', '-dpng');

boxplot(normalGroup(:,11));  % Box plot Vibration_sensor_3 for normal 
ylabel('Vibration Level');
title('Vibration_sensor_3 Under Normal Status', 'Interpreter', 'none');
print('plots/NVibration_sensor_3', '-dpng');

boxplot(normalGroup(:,12));  % Box plot Vibration_sensor_4 for normal 
ylabel('Vibration Level');
title('Vibration_sensor_4 Under Normal Status', 'Interpreter', 'none');
print('plots/NVibration_sensor_4', '-dpng');



% Box plots for abnormal group
boxplot(abnormalGroup(:,1));  % Box plot Power_range_sensor_1 for abnormal 
ylabel('Power Level');
title('Power_range_sensor_1 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APower_range_sensor_1', '-dpng');

boxplot(abnormalGroup(:,2));  % Box plot Power_range_sensor_2 for abnormal 
ylabel('Power Level');
title('Power_range_sensor_2 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APower_range_sensor_2', '-dpng');

boxplot(abnormalGroup(:,3));  % Box plot Power_range_sensor_3 for abnormal 
ylabel('Power Level');
title('Power_range_sensor_3 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APower_range_sensor_3', '-dpng');

boxplot(abnormalGroup(:,4));  % Box plot Power_range_sensor_4 for abnormal 
ylabel('Power Level');
title('Power_range_sensor_4 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APower_range_sensor_4', '-dpng');


boxplot(abnormalGroup(:,5));  % Box plot Pressure_sensor_1 for abnormal 
ylabel('Pressure Level');
title('Pressure_sensor_1 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APressure_sensor_1', '-dpng');

boxplot(abnormalGroup(:,6));  % Box plot Pressure_sensor_2 for abnormal 
ylabel('Pressure Level');
title('Pressure_sensor_2 Under Abnormal Status', 'Interpreter', 'none'); 
print('plots/APressure_sensor_2', '-dpng');

boxplot(abnormalGroup(:,7));  % Box plot Pressure_sensor_3 for abnormal 
ylabel('Pressure Level');
title('Pressure_sensor_3 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APressure_sensor_3', '-dpng');

boxplot(abnormalGroup(:,8));  % Box plot Pressure_sensor_4 for abnormal 
ylabel('Pressure Level');
title('Pressure_sensor_4 Under Abnormal Status', 'Interpreter', 'none');
print('plots/APressure_sensor_4', '-dpng');


boxplot(abnormalGroup(:,9));  % Box plot Vibration_sensor_1 for abnormal 
ylabel('Vibration Level');
title('Vibration_sensor_1 Under Abnormal Status', 'Interpreter', 'none');
print('plots/AVibration_sensor_1', '-dpng');

boxplot(abnormalGroup(:,10));  % Box plot Vibration_sensor_2 for abnormal 
ylabel('Vibration Level');
title('Vibration_sensor_2 Under Abnormal Status', 'Interpreter', 'none');
print('plots/AVibration_sensor_2', '-dpng');

boxplot(abnormalGroup(:,11));  % Box plot Vibration_sensor_3 for abnormal 
ylabel('Vibration Level');
title('Vibration_sensor_3 Under Abnormal Status', 'Interpreter', 'none');
print('plots/AVibration_sensor_3', '-dpng');

boxplot(abnormalGroup(:,12));  % Box plot Vibration_sensor_4 for abnormal 
ylabel('Vibration Level');
title('Vibration_sensor_4 Under Abnormal Status', 'Interpreter', 'none');
print('plots/AVibration_sensor_4', '-dpng');
