# Multi-Band-Image-Analysis-Using-Ensemble-Neural-Networks
Multi-Band Image Analysis Using Ensemble Neural Networks

CResNet.rar  stores the code for training/testing the CResNet

Data augmentation is performed for Foramnifera and EuroSAT (for LCZ42 we have not performed it due to computational issues), using the following matlab functions, where IM is a given image:

flip(IM,2);

flip(IM,1);

scale=rand(1,2)+1;

imresize(imresize(IM,scale(1)),siz);%siz is the input size of the net

