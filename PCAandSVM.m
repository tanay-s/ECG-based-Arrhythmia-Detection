load('Arrhythmia_training_balanced.mat');
load('Arrhythmia_testing_balanced.mat');
rand_testing_data = testing_dataset(randperm(236),:);
rand_test_feature = rand_testing_data(:,1:278);
rand_test_label=rand_testing_data(:,279);
rand_training_data = training_dataset(randperm(934),:);
training_data_PCA = rand_training_data(:,1:278);
training_label_PCA = rand_training_data(:,279);

%SVM without PCA
% one vs one
md1 = fitcecoc(training_data_PCA,training_label_PCA);
coding_matrix = md1.CodingMatrix;
insample_loss = resubLoss(md1); % insample loss 

cvmd1 = crossval(md1); % cross validation
outofsample_loss = kfoldLoss(cvmd1); % out of sample loss or generalization error. 

predicted_labels = predict(md1,rand_test_feature); % testing

C =confusionmat(rand_test_label,predicted_labels); % Confusion Matrix
acc=(C(1,1)+C(2,2)+C(3,3)+C(4,4)+C(5,5)+C(6,6)+C(8,8)+C(9,9)+C(10,10)+C(11,11)+C(12,12)+C(13,13))/sum(sum(C));% accuracy

precision_mat_one = precision(C);
recall_mat_one = recall(C);

%one vs ALL

md2 = fitcecoc(training_data_PCA,training_label_PCA,'coding','onevsall');
coding_matrix_all =md2.CodingMatrix;
insample_loss_all = resubLoss(md2);

cvmd2 = crossval(md2);
outofsample_loss_all =kfoldLoss(cvmd2);

predicted_labels_all = predict(md2,rand_test_feature);
C_all =confusionmat(rand_test_label,predicted_labels_all);
acc_all=(C_all(1,1)+C_all(2,2)+C_all(3,3)+C_all(4,4)+C_all(5,5)+C_all(6,6)+C_all(8,8)+C_all(9,9)+C_all(10,10)+C_all(11,11)+C_all(12,12)+C_all(13,13))/sum(sum(C_all));
%plotconfusion(rand_test_label,predicted_labels_all);

precision_mat_all = precision(C_all);
recall_mat_all = recall(C_all);

% SVM on Original data
total_data = [data class_labels];
total_data = total_data(randperm(452),:);
train_org_data = total_data(1:floor(0.8*452),1:278);
test_org_data = total_data((floor(0.8*452)+1):452,1:278);
train_org_label = total_data(1:floor(0.8*452),279);
test_org_label = total_data(((floor(0.8*452))+1):452,279);

md1_org = fitcecoc(train_org_data,train_org_label);
code_mat_org =md1_org.CodingMatrix;
org_insample_loss = resubLoss(md1_org);

cvmd1_org = crossval(md1_org);
org_outofsample_loss =kfoldLoss(cvmd1_org);

org_predicted_labels = predict(md1_org,test_org_data);
org_C =confusionmat(test_org_label,org_predicted_labels);
org_acc=(org_C(1,1)+org_C(2,2)+org_C(3,3)+org_C(4,4)+org_C(5,5)+org_C(6,6)+org_C(8,8)+org_C(9,9)+org_C(10,10)+org_C(11,11)+org_C(12,12)+org_C(13,13))/sum(sum(org_C));

org_precision_mat= precision(org_C);
org_recall_mat = recall(org_C);




