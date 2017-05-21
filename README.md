# ECG-based-Arrhythmia-Detection
Dataset is available at: https://archive.ics.uci.edu/ml/datasets/Arrhythmia

Steps for classification:
Missing values were treated using k-NN.
Data imbalance was handled using SMOTE.
Feature reduction was done using PCA.
Classification techinques used are SVM, Random Forest adn Naive Bayes.

SVM (one vs one) performs the best with ~96% accuracy.

Source codes:
rf_naive-bayes.m performs PCA on the data (after being treated with missing values and class imbalance) and classifies data using Random Forest and Naive Bayes algorithm.
