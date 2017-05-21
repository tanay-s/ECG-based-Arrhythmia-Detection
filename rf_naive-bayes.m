load random_balanced.mat
training_data = rand_training_data(:,1:278);
class_labels_training = rand_training_data(:,279);
class_labels_testing = rand_testing_data(:,279);
[princ_comp,score,latent,tsquared,var]= pca(training_data);
cum_var = cumsum(var(:,:));
feature_vector = princ_comp(:,1:35);
data_pc = training_data*feature_vector;
data_pc_training = data_pc(1:934,:);
data_pc_testing = rand_testing_data(:,1:278)*feature_vector;
classNames = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16'};
prior = [0.2099 0.1499 0.0642 0.0642 0.0557 0.1071 0.0075 0.0032 0.0385 0.1713 0 0 0 0.0128 0.0214 0.0942];

Mdl = fitcnb(data_pc_training, class_labels_training, 'ClassNames',classNames,'Prior',prior);
label= predict(Mdl,data_pc_testing);
label = str2double(label);
[c,order]=confusionmat(class_labels_testing,label);
rows_sum = sum(c,2);
cols_sum = sum(c,1);
diag_elements = diag(c);
precision = diag(c)./cols_sum';
recall = diag(c)./rows_sum;
acc = trace(c)/sum(sum(c));

for i=1:1:size(c,1)
    f_score(i,1) = 2*(precision(i,1)*recall(i,1))/(precision(i,1)+recall(i,1));
end


rf = TreeBagger(50, data_pc_training, class_labels_training, 'ClassNames',classNames);
label_rf = predict(rf,data_pc_testing);
label_rf = str2double(label_rf);
[c_rf,order_rf]=confusionmat(class_labels_testing,label_rf);
acc_rf = trace(c_rf)/sum(sum(c_rf));


rows_sum_rf = sum(c_rf,2);
cols_sum_rf = sum(c_rf,1);
diag_elements_rf = diag(c_rf);
precision_rf = diag(c_rf)./cols_sum_rf';
recall_rf = diag(c_rf)./rows_sum_rf;
 
for i=1:1:size(c,1)
    f_score_rf(i,1) = 2*(precision_rf(i,1)*recall_rf(i,1))/(precision_rf(i,1)+ recall_rf(i,1));
end


