clear all; 

load 'PAAD_ESCA_CHOL_GE3.mat';
load 'PAAD_ESCA_CHOL_Samplecategory3.mat';

fea1 = PAAD_ESCA_CHOL_GE3;
gnd1 = PAAD_ESCA_CHOL_Samplecategory3;
fea1 = mapminmax(fea1,0,1);

p=30;
%%

% for d=1:p
%     tic
%                 [fea, gnd, L_data, L_label]=data_all(fea1,gnd1);
%                 [A1 , B1]=return_after_GNMF(fea, L_data,gnd); 
%                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
%                 predict_label  =   predict(mdl,B1');
%                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
%                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
%                 result(1,d)=accuracy;
%                 result2(1,d)=recall;
%                 result3(1,d)=precision;
%                 result4(1,d)=Fmeasure;
%     toc
% end
% result(1,d+1)=1;
% result(1,d+2)=mean(result(1,1:30));
% result(1,d+3)=var(result(1,1:30));
% result2(1,d+1)=1;
% result2(1,d+2)=mean(result2(1,1:30));
% result2(1,d+3)=var(result2(1,1:30));
% result3(1,d+1)=1;
% result3(1,d+2)=mean(result3(1,1:30));
% result3(1,d+3)=var(result3(1,1:30));
% result4(1,d+1)=1;
% result4(1,d+2)=mean(result4(1,1:30));
% result4(1,d+3)=var(result4(1,1:30));
% %%
% 
% for d=1:p
%     tic
%                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
%                 [A1 , B1]=return_after_HNMF(fea, L_data,gnd); 
%                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
%                 predict_label  =   predict(mdl,B1');
%                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
%                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
%                 result(2,d)=accuracy;
%                 result2(2,d)=recall;
%                 result3(2,d)=precision;
%                 result4(2,d)=Fmeasure;
%    toc
% end
% result(2,d+1)=2;
% result(2,d+2)=mean(result(2,1:30));
% result(2,d+3)=var(result(2,1:30));
% result2(2,d+1)=2;
% result2(2,d+2)=mean(result2(2,1:30));
% result2(2,d+3)=var(result2(2,1:30));
% result3(2,d+1)=2;
% result3(2,d+2)=mean(result3(2,1:30));
% result3(2,d+3)=var(result3(2,1:30));
% result4(1,d+1)=2;
% result4(2,d+2)=mean(result4(2,1:30));
% result4(2,d+3)=var(result4(2,1:30));
% 
% %%
% for d=1:p
%     tic
%                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
%                 [A1 , B1]=return_after_NMF(fea, L_data,gnd); 
%                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
%                 predict_label  =   predict(mdl,B1');
%                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
%                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
%                 result(3,d)=accuracy;
%                 result2(3,d)=recall;
%                 result3(3,d)=precision;
%                 result4(3,d)=Fmeasure;
%    toc
% end
% result(3,d+1)=1;
% result(3,d+2)=mean(result(3,1:30));
% result(3,d+3)=var(result(3,1:30));
% result2(3,d+1)=1;
% result2(3,d+2)=mean(result2(3,1:30));
% result2(3,d+3)=var(result2(3,1:30));
% result3(3,d+1)=1;
% result3(3,d+2)=mean(result3(3,1:30));
% result3(3,d+3)=var(result3(3,1:30));
% result4(3,d+1)=3;
% result4(3,d+2)=mean(result4(3,1:30));
% result4(3,d+3)=var(result4(3,1:30));
% %%
% 
% for d=1:p
%     tic
%                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
%                 [A1 , B1]=return_after_L2NMF(fea, L_data,gnd); 
%                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
%                 predict_label  =   predict(mdl,B1');
%                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
%                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
%                 result(4,d)=accuracy;
%                 result2(4,d)=recall;
%                 result3(4,d)=precision;
%                 result4(4,d)=Fmeasure;
%     toc
% end
% result(4,d+1)=4;
% result(4,d+2)=mean(result(4,1:30));
% result(4,d+3)=var(result(4,1:30));
% result2(4,d+1)=4;
% result2(4,d+2)=mean(result2(4,1:30));
% result2(4,d+3)=var(result2(4,1:30));
% result3(4,d+1)=4;
% result3(4,d+2)=mean(result3(4,1:30));
% result3(4,d+3)=var(result3(4,1:30));
% result4(4,d+1)=4;
% result4(4,d+2)=mean(result4(4,1:30));
% result4(4,d+3)=var(result4(4,1:30));
 for d=1:p
     tic
                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
                 [A1 , B1]=return_after_SDGNMF(fea, L_data,gnd); 
                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
                 predict_label  =   predict(mdl,B1');
                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
                 result(5,d)=accuracy;
                 result2(5,d)=recall;
                 result3(5,d)=precision;
                 result4(5,d)=Fmeasure;
     toc
 
 end
 result(5,d+1)=5;
 result(5,d+2)=mean(result(5,1:30));
 result(5,d+3)=var(result(5,1:30));
 result2(5,d+1)=5;
 result2(5,d+2)=mean(result2(5,1:30));
 result2(5,d+3)=var(result2(5,1:30));
 result3(5,d+1)=5;
 result3(5,d+2)=mean(result3(5,1:30));
 result3(5,d+3)=var(result3(5,1:30));
 result4(5,d+1)=5;
 result4(5,d+2)=mean(result4(5,1:30));
 result4(5,d+3)=var(result4(5,1:30));
 %%
 
 for d=1:p
     tic
                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
                 [A1 , B1]=return_after_DNMF(fea, L_data,gnd); 
                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
                 predict_label  =   predict(mdl,B1');
                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
                 [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
                 result(6,d)=accuracy;
                 result2(6,d)=recall;
                 result3(6,d)=precision;
                 result4(6,d)=Fmeasure;
      toc
 end
 result(6,d+1)=6;
 result(6,d+2)=mean(result(6,1:30));
 result(6,d+3)=var(result(6,1:30));
 result2(6,d+1)=6;
 result2(6,d+2)=mean(result2(6,1:30));
 result2(6,d+3)=var(result2(6,1:30));
 result3(6,d+1)=6;
 result3(6,d+2)=mean(result3(6,1:30));
 result3(6,d+3)=var(result3(6,1:30));
 result4(6,d+1)=6;
 result4(6,d+2)=mean(result4(6,1:30));
 result4(6,d+3)=var(result4(6,1:30));
 for d=1:1
     tic
                 [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
                 [A1 , B1]=return_after_GDNMF(fea, L_data,gnd);
                 mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
           	    predict_label  =   predict(mdl,B1');
                 accuracy  =   length(find(predict_label == L_label))/length(L_label);
                 result(7,d)=accuracy;
     toc
 end
 result(7,d+1)=7;
d=1;
for d=1:p
    tic
                [fea, gnd, L_data, L_label]=data3(fea1,gnd1);
                [A1 , B1]=return_after_RH2NMF(fea, L_data,gnd,0.1,0.1,50,1000,100,d);
                mdl = ClassificationKNN.fit(A1' ,gnd,'NumNeighbors',1);
          	    predict_label  =   predict(mdl,B1');
                accuracy1  =   length(find(predict_label == L_label))/length(L_label);
                [recall, precision, Fmeasure]=Value_duo(L_label,predict_label);
                result(8,d)=accuracy1;
                result2(8,d)=recall;
                result3(8,d)=precision;
                result4(8,d)=Fmeasure;
    toc

end
result(8,d+1)=8;
result(8,d+2)=mean(result(8,1:30));
result(8,d+3)=var(result(8,1:30));
result2(8,d+1)=8;
result2(8,d+2)=mean(result2(8,1:30));
result2(8,d+3)=var(result2(8,1:30));
result3(8,d+1)=8;
result3(8,d+2)=mean(result3(8,1:30));
result3(8,d+3)=var(result3(8,1:30));
result4(8,d+1)=8;
result4(8,d+2)=mean(result4(8,1:30));
result4(8,d+3)=var(result4(8,1:30));




