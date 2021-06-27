# Segmenting-RBC-WBC-with-CNN-MATLAB

## Segmenting RBC and WBC's with CNN on MATLAB

### Instructions and file definings;

- In the file named Predicting_Test_Images, there are a total of 20 images from two cell types that can be used to test the convulutional neural network when Prediction.m is run.

- The file named Dataset contains the data set used in the project.

- Source_Code.m is the MATLAB code for the convolutional neural network design.

- Prediction.m is an extra code where the designed neural network can be tested.

- For prediction, Prediction.m should be run after Source_Code.m is run. 

### Introduction

This report provided information about an convolutional neural network design project that differentiates red and white blood cells and concluded that the design was successful as a result of the tests. This report includes training the network using 4 types of white blood cells, including eosinophil, lymphocyte, monocyte, neutrophil, and erythrocyte samples, which are red blood cells, and determining the cell type from the cell samples given to the designed network.

### Exploring Dataset

The aim of the study is to teach red blood cells and white blood cells to artificial neural networks and to determine the cell type according to the cell photo given to the input of the learned network. In this study, the convolutional neural network (CNN) algorithm was used. There are 200 images in the input dataset, and 75% of these images are reserved for training the network and 25% for testing the network. 

### Net

The network designed for the experiment consists of 1 input, 18 intermediate and 1 output layers. Stochastic gradient descent (SGD) algorithm was preferred as the optimization algorithm. The network was repeated for 20 epochs. The learning rate of the network is set to 0.1.

### Results

The overall accuracy rate obtained using this method was determined as 97.92%. The accuracy rate of the specially designed system in white blood cells was 95.8% and the accuracy rate in red blood cells was determined as 100%.

Blood cell analysis in microscopic images of blood cells using digital image processing technique is a better solution method in terms of accuracy and efficiency in terms of time and cost compared to current blood cell examination techniques. MATLAB is one of the widely used software for this purpose. The artificial neural network design prepared has also proven its accuracy as a result of the experiments and ensured the successful conclusion of the project.
