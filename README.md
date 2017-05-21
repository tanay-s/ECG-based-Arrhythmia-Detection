# ECG-based-Arrhythmia-Detection
Dataset is available at: https://archive.ics.uci.edu/ml/datasets/Arrhythmia <br />

Steps for classification: <br />
Missing values were treated using k-NN. <br />
Data imbalance was handled using SMOTE. <br />
Feature reduction was done using PCA. <br />
Classification techinques used are SVM, Random Forest and Naive Bayes. <br />

SVM (one vs one) performs the best with ~96% accuracy. <br />

Source codes: <br />
**rf_naive-bayes.m** performs PCA on the data (after being treated with missing values and class imbalance) and classifies data using Random Forest and Naive Bayes algorithm.<br />
**SMOTE.m** is function obtained from MATLAB central for performing SMOTE on data. **nearestneighbour.m** is called by SMOTE.<br />
**SMOTE_Trial.m** performs the SMOTE on our data by calling SMOTE function. It also makes the values equal to '0' or '1' if these were the only values in original data (adjust the decimal valus between 0 and 1 to either 0 or 1).<br />
**PCAandSVM.m** performs PCA and SVM (both one vs one and one vs all).<br />
