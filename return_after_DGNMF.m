function [A, B]=return_after_DGNMF(trainset, testset,op)
%%GDNMF算法的拉普拉斯矩阵计算过程   
options = [];
options.Metric = 'Euclidean';
options.NeighborMode = 'KNN';
options.k = 5;
options.WeightMode = 'HeatKernel';
options.t = 1;
W = constructW(trainset',options);
D = diag(sum(W,2));
%%训练算法模型
% alpha=5;
% beta=6;
[m,n]=size(trainset);
% intau=rand(m,num_basis);
% intau = intau./(ones(m,1)*sum(intau,1));
% intav=rand(num_basis,n);
%%训练算法得到

U = SPCA(trainset,op);

U = ((U'*U)\U')';
A=trainset'*U;   
A=A';        
B=testset'*U;  
B=B';  
