load ('Arrhythmia_Data');
load ('Arrhythmia_class_labels');

int_column =[];
for i=1:1:278
    
    if(mod((data(:,i)),1)==0)
        int_column = [int_column i];
    end
    
end
[rows cols] = size(int_column);
%class 1
features_new_1 = data(class_labels==1,:);
labels_new_1 = ones(sum(class_labels==1),1);
[rows_1 cols_1] = size(features_new_1);
 features_new_1_rand = features_new_1(randperm(rows_1),:);
 features_new_1_train = features_new_1_rand(1:floor(0.8*rows_1),:);
 features_new_1_test = features_new_1_rand((floor(0.8*rows_1)+1):rows_1,:);
 labels_new_1_train = labels_new_1(1:floor(0.8*rows_1));
 labels_new_1_test = labels_new_1((floor(0.8*rows_1)+1):rows_1);

%class 2
 features_2=data(class_labels==2,:);
 labels_2=ones(sum(class_labels==2),1);
 [features_new_2,labels_new_2]=SMOTE(features_2,labels_2,5);
 labels_new_2 = 2*labels_new_2;
 
 
 for k = 1:1:cols;
     features_new_2(:,int_column(1,k))= round(features_new_2(:,int_column(1,k)));
     
 end
 [rows_2 cols_2] = size(features_new_2);
 features_new_2_rand = features_new_2(randperm(rows_2),:);
 features_new_2_train = features_new_2_rand(1:floor(0.8*rows_2),:);
 features_new_2_test = features_new_2_rand((floor(0.8*rows_2)+1):rows_2,:);
 labels_new_2_train = labels_new_2(1:floor(0.8*rows_2));
 labels_new_2_test = labels_new_2((floor(0.8*rows_2)+1):rows_2);
     
 
 %class 3
 
 features_3=data(class_labels==3,:);
 labels_3=ones(sum(class_labels==3),1);
 [features_new_3,labels_new_3]=SMOTE(features_3,labels_3,6);
 labels_new_3 = 3*labels_new_3;
 
 for k = 1:1:cols;
     features_new_3(:,int_column(1,k))= round(features_new_3(:,int_column(1,k)));
     
 end
 
 [rows_3 cols_3] = size(features_new_3);
 features_new_3_rand = features_new_3(randperm(rows_3),:);
 features_new_3_train = features_new_3_rand(1:floor(0.8*rows_3),:);
 features_new_3_test = features_new_3_rand((floor(0.8*rows_3)+1):rows_3,:);
 labels_new_3_train = labels_new_3(1:floor(0.8*rows_3));
 labels_new_3_test = labels_new_3((floor(0.8*rows_3)+1):rows_3);
 
 %class 4

 features_4=data(class_labels==4,:);
 labels_4=ones(sum(class_labels==4),1);
 [features_new_4,labels_new_4]=SMOTE(features_4,labels_4,6);
 labels_new_4 = 4*labels_new_4;
 
 for k = 1:1:cols;
     features_new_4(:,int_column(1,k))= round(features_new_4(:,int_column(1,k)));
     
 end
 
 [rows_4 cols_4] = size(features_new_4);
 features_new_4_rand = features_new_4(randperm(rows_4),:);
 features_new_4_train = features_new_4_rand(1:floor(0.8*rows_4),:);
features_new_4_test = features_new_4_rand((floor(0.8*rows_4)+1):rows_4,:);
labels_new_4_train = labels_new_4(1:floor(0.8*rows_4));
labels_new_4_test = labels_new_4((floor(0.8*rows_4)+1):rows_4);
 
%class 5
 features_5=data(class_labels==5,:);
 labels_5=ones(sum(class_labels==5),1);
 [features_new_5,labels_new_5]=SMOTE(features_5,labels_5,6);
 labels_new_5 = 5*labels_new_5;
 
 for k = 1:1:cols;
     features_new_5(:,int_column(1,k))= round(features_new_5(:,int_column(1,k)));
     
 end
 
 [rows_5 cols_5] = size(features_new_5);
 features_new_5_rand = features_new_5(randperm(rows_5),:);
 features_new_5_train = features_new_5_rand(1:floor(0.8*rows_5),:);
 features_new_5_test = features_new_5_rand((floor(0.8*rows_5)+1):rows_5,:);
 labels_new_5_train = labels_new_5(1:floor(0.8*rows_5));
 labels_new_5_test = labels_new_5((floor(0.8*rows_5)+1):rows_5);
 
 %class 6
 features_6=data(class_labels==6,:);
 labels_6=ones(sum(class_labels==6),1);
 [features_new_6,labels_new_6]=SMOTE(features_6,labels_6,6);
 labels_new_6 = 6*labels_new_6;
 
 for k = 1:1:cols;
     features_new_6(:,int_column(1,k))= round(features_new_6(:,int_column(1,k)));
     
 end
 [rows_6 cols_6] = size(features_new_6);
 features_new_6_rand = features_new_6(randperm(rows_6),:);
 features_new_6_train = features_new_6_rand(1:floor(0.8*rows_6),:);
 features_new_6_test = features_new_6_rand((floor(0.8*rows_6)+1):rows_6,:);
 labels_new_6_train = labels_new_6(1:floor(0.8*rows_6));
 labels_new_6_test = labels_new_6((floor(0.8*rows_6)+1):rows_6);
 
 %class 7
 features_7=data(class_labels==7,:);
 labels_7=ones(sum(class_labels==7),1);
 [features_new_7,labels_new_7]=SMOTE(features_7,labels_7,5); % not taking factor below 4 but giving output 3 times for any other case.
 labels_new_7 = 7*labels_new_7;
 
 for k = 1:1:cols;
     features_new_7(:,int_column(1,k))= round(features_new_7(:,int_column(1,k)));
     
 end
 
 [rows_7 cols_7] = size(features_new_7);
 features_new_7_rand = features_new_7(randperm(rows_7),:);
 features_new_7_train = features_new_7_rand(1:floor(0.8*rows_7),:);
 features_new_7_test = features_new_7_rand((floor(0.8*rows_7)+1):rows_7,:);
 labels_new_7_train = labels_new_7(1:floor(0.8*rows_7));
 labels_new_7_test = labels_new_7((floor(0.8*rows_7)+1):rows_7);
 
 %class 8
 features_8=data(class_labels==8,:);
 labels_8=ones(sum(class_labels==8),1);
 [features_new_8,labels_new_8]=SMOTE(features_8,labels_8,5); % not taking factor below 4 but giving output 2 times for any other case.
 labels_new_8 = 8*labels_new_8;
 
 for k = 1:1:cols;
     features_new_8(:,int_column(1,k))= round(features_new_8(:,int_column(1,k)));
     
 end
 
 [rows_8 cols_8] = size(features_new_8);
 features_new_8_rand = features_new_8(randperm(rows_8),:);
 features_new_8_train = features_new_8_rand(1:floor(0.8*rows_8),:);
 features_new_8_test = features_new_8_rand((floor(0.8*rows_8)+1):rows_8,:);
 labels_new_8_train = labels_new_8(1:floor(0.8*rows_8));
 labels_new_8_test = labels_new_8((floor(0.8*rows_8)+1):rows_8);
 
 % class 9
 features_9=data(class_labels==9,:);
 labels_9=ones(sum(class_labels==9),1);
 [features_new_9,labels_new_9]=SMOTE(features_9,labels_9,6); 
 labels_new_9 = 9*labels_new_9;
 
 for k = 1:1:cols;
     features_new_9(:,int_column(1,k))= round(features_new_9(:,int_column(1,k)));
     
 end
 
 [rows_9 cols_9] = size(features_new_9);
 features_new_9_rand = features_new_9(randperm(rows_9),:);
 features_new_9_train = features_new_9_rand(1:floor(0.8*rows_9),:);
 features_new_9_test = features_new_9_rand((floor(0.8*rows_9)+1):rows_9,:);
 labels_new_9_train = labels_new_9(1:floor(0.8*rows_9));
 labels_new_9_test = labels_new_9((floor(0.8*rows_9)+1):rows_9);
 
  % class 10
 features_10=data(class_labels==10,:);
 labels_10=ones(sum(class_labels==10),1);
 [features_new_10,labels_new_10]=SMOTE(features_10,labels_10,5); 
 labels_new_10 = 10*labels_new_10;
 
 for k = 1:1:cols;
     features_new_10(:,int_column(1,k))= round(features_new_10(:,int_column(1,k)));
     
 end
 
 [rows_10 cols_10] = size(features_new_10);
 features_new_10_rand = features_new_10(randperm(rows_10),:);
 features_new_10_train = features_new_10_rand(1:floor(0.8*rows_10),:);
 features_new_10_test = features_new_10_rand((floor(0.8*rows_10)+1):rows_10,:);
 labels_new_10_train = labels_new_10(1:floor(0.8*rows_10));
 labels_new_10_test = labels_new_10((floor(0.8*rows_10)+1):rows_10);
 
 % class 14
 features_14=data(class_labels==14,:);
 labels_14=ones(sum(class_labels==14),1);
 [features_new_14,labels_new_14]=SMOTE(features_14,labels_14,5); % not more than 4 times 
 labels_new_14 = 14*labels_new_14;
 
 for k = 1:1:cols;
     features_new_14(:,int_column(1,k))= round(features_new_14(:,int_column(1,k)));
     
 end
 [rows_14 cols_14] = size(features_new_14);
 features_new_14_rand = features_new_14(randperm(rows_14),:);
 features_new_14_train = features_new_14_rand(1:floor(0.8*rows_14),:);
 features_new_14_test = features_new_14_rand((floor(0.8*rows_14)+1):rows_14,:);
 labels_new_14_train = labels_new_14(1:floor(0.8*rows_14));
labels_new_14_test = labels_new_14((floor(0.8*rows_14)+1):rows_14);
 
% class 15
 features_15=data(class_labels==15,:);
 labels_15=ones(sum(class_labels==15),1);
 [features_new_15,labels_new_15]=SMOTE(features_15,labels_15,6); % not more than 5 times 
 labels_new_15 = 15*labels_new_15;
 
 for k = 1:1:cols;
     features_new_15(:,int_column(1,k))= round(features_new_15(:,int_column(1,k)));
     
 end
 
 [rows_15 cols_15] = size(features_new_15);
 features_new_15_rand = features_new_15(randperm(rows_15),:);
 features_new_15_train = features_new_15_rand(1:floor(0.8*rows_15),:);
 features_new_15_test = features_new_15_rand((floor(0.8*rows_15)+1):rows_15,:);
 labels_new_15_train = labels_new_15(1:floor(0.8*rows_15));
 labels_new_15_test = labels_new_15((floor(0.8*rows_15)+1):rows_15);
 
  % class 16
 features_16=data(class_labels==16,:);
 labels_16=ones(sum(class_labels==16),1);
 [features_new_16,labels_new_16]=SMOTE(features_16,labels_16,6); 
 labels_new_16 = 16*labels_new_16;
 
 for k = 1:1:cols;
     features_new_16(:,int_column(1,k))= round(features_new_16(:,int_column(1,k)));
     
 end
 
 [rows_16 cols_16] = size(features_new_16);
 features_new_16_rand = features_new_16(randperm(rows_16),:);
 features_new_16_train = features_new_16_rand(1:floor(0.8*rows_16),:);
 features_new_16_test = features_new_16_rand((floor(0.8*rows_16)+1):rows_16,:);
 labels_new_16_train = labels_new_16(1:floor(0.8*rows_16));
 labels_new_16_test = labels_new_16((floor(0.8*rows_16)+1):rows_16);

 all_features_train=[features_new_1_train;features_new_2_train;features_new_3_train;features_new_4_train;features_new_5_train;features_new_6_train;...
features_new_7_train;features_new_8_train;features_new_9_train;features_new_10_train;features_new_14_train;features_new_15_train;...
features_new_16_train];

 all_labels_train=[labels_new_1_train;labels_new_2_train;labels_new_3_train;labels_new_4_train;labels_new_5_train;labels_new_6_train;...
labels_new_7_train;labels_new_8_train;labels_new_9_train;labels_new_10_train;labels_new_14_train;labels_new_15_train;...
labels_new_16_train];



 all_features_test=[features_new_1_test;features_new_2_test;features_new_3_test;features_new_4_test;features_new_5_test;features_new_6_test;...
features_new_7_test;features_new_8_test;features_new_9_test;features_new_10_test;features_new_14_test;features_new_15_test;...
features_new_16_test];

 all_labels_test=[labels_new_1_test;labels_new_2_test;labels_new_3_test;labels_new_4_test;labels_new_5_test;labels_new_6_test;...
labels_new_7_test;labels_new_8_test;labels_new_9_test;labels_new_10_test;labels_new_14_test;labels_new_15_test;...
labels_new_16_test];

training_dataset =[all_features_train,all_labels_train];
[train_rows train_cols] = size(training_dataset);
training_datset = training_dataset(randperm(train_rows),:);
testing_dataset =[all_features_test,all_labels_test]; 
[test_rows test_cols] = size(testing_dataset);
testing_datset = testing_dataset(randperm(test_rows),:);





