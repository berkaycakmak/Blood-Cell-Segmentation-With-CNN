% Segmenting RBC and WBC's with CNN

% Importing dataset to MATLAB;
DatasetPath= './Dataset';

Images = imageDatastore(DatasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');

% Test-train splitting;
numTrainFiles=0.75;
[TrainImages, TestImages]=splitEachLabel(Images,numTrainFiles,'randomize');

% Defining layers;
layers=[
        imageInputLayer([240 320 3],'Name','Input')
        
        convolution2dLayer(3,8,'Padding','same','Name','Conv_1')
        batchNormalizationLayer('Name','BN_1')
        reluLayer('Name','Relu_1')
        maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_1')
        
        convolution2dLayer(3,16,'Padding','same','Name','Conv_2')
        batchNormalizationLayer('Name','BN_2')
        reluLayer('Name','Relu_2')
        maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_2')
        
        convolution2dLayer(3,32,'Padding','same','Name','Conv_3')
        batchNormalizationLayer('Name','BN_3')
        reluLayer('Name','Relu_3')
        maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_3')
        
        convolution2dLayer(3,64,'Padding','same','Name','Conv_4')
        batchNormalizationLayer('Name','BN_4')
        reluLayer('Name','Relu_4')
        maxPooling2dLayer(2,'Stride',2,'Name','MaxPool_4')
        
        fullyConnectedLayer(2,'Name','FC')
        softmaxLayer('Name','SoftMax');
        classificationLayer('Name','Output Classification');
        ];

% Defining CNN's options;
options = trainingOptions('sgdm','InitialLearnRate',0.1,'MaxEpochs',20,'Shuffle','every-epoch','ValidationData',TestImages,'ValidationFrequency',30,'Verbose',false,'Plots','training-progress');

% Creating CNN;
net = trainNetwork(TrainImages,layers,options);

% Accuracy;
YPred = classify(net,TestImages);
YValidation = TestImages.Labels;
accuracy = sum(YPred == YValidation)/numel(YValidation)

%Plotting confusion matrix;
plotconfusion(YValidation,YPred)