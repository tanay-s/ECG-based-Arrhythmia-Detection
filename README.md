# ECG-based-Arrhythmia-Detection
Dataset is available at: https://archive.ics.uci.edu/ml/datasets/Arrhythmia <br />

Steps for classification: <br />
Missing values were treated using k-NN. <br />
Data imbalance was handled using SMOTE. <br />
Feature reduction was done using PCA. <br />
Classification techinques used are SVM, Random Forest adn Naive Bayes. <br />

SVM (one vs one) performs the best with ~96% accuracy. <br />

Source codes: <br />
**rf_naive-bayes.m** performs PCA on the data (after being treated with missing values and class imbalance) and classifies data using Random Forest and Naive Bayes algorithm.
