function [A, B]=return_after_SDGNMF(trainset, testset,gnd)
k = length(unique(gnd));
fea =trainset;

options = [];
options.WeightMode = 'Binary';  
W1 = constructW(fea',options);

options = [];
options.WeightMode = 'Binary';  
W2 = constructW(fea,options);

options.maxIter = 100;
options.alpha = 500;
options.gama = 500;
%%—µ¡∑À„∑®µ√µΩ
[U, ~] = SDGNMF(fea, k, W1 ,W2,options);

U = ((U'*U)\U')';
A=trainset'*U;   
A=A';        
B=testset'*U;  
B=B';  
