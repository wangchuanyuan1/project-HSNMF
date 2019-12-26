clear all

load('CO_ES_HN_PA_CH.mat')
load('CO_ES_HN_PA_CHfeaturename.mat')
load('CO_ES_HN_PA_CHSamplecategory.mat')
fea = CO_ES_HN_PA_CH;   %样本x基因
gnd = Samplecategory;  %样本
gene = PAAD_ESCA_CHOL_GE3_featurename ;
% %%
% [U1,V1] = refer_HNMF(fea,gnd);
% feature_selection (U1, gnd, gene,'HNMF5109');
% %%
% [U2,V2] = refer_NMF(fea,gnd);
% feature_selection (U2, gnd, gene,'NMF5109');
% %%
% [U3,V3] = refer_GNMF(fea,gnd);
% feature_selection (U3, gnd, gene,'GNMF5109');
% %%
% [U4,V4] = refer_L21NMF(fea,gnd);
% feature_selection (U4, gnd, gene,'L2NMF5109');
%%
[U5,V5] = refer_RH2DNMF(fea,gnd);
feature_selection (U5, gnd, gene,'RH2DNMF5109');
