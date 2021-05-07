
negativeFolder= fullfile('C:\Users\Uma\Desktop\nffinal');
trainCascadeObjectDetector('fishdetect0r1.xml',positiveInstances, ...
    negativeFolder,'FalseAlarmRate',0.1,'NumCascadeStages',10);
