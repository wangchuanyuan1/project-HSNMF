function [A, B]=return_after_DNMF(trainset, testset,gnd)
nClass = length(unique(gnd));
fea =trainset;
[m,n] = size(fea);
options.maxIter = 100;
options.alpha = 50;

intau = rand(m,nClass);
intav = rand(nClass,n);

%%—µ¡∑À„∑®µ√µΩ
[U,~] = DNMF(fea, gnd, options, intau, intav);

U = ((U'*U)\U')';
A=trainset'*U;   
A=A';        
B=testset'*U;  
B=B';  
