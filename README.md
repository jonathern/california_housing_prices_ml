# California House Prices ML Tasks (Regression, Classification)

## Critical Analysis and Reflection

## Compare Lasso Regression and SVM in terms of Interpretability and Computability

Lasso Regression is generally more interpretable than SVM because its coefficients directly show the direction and strength of each feature’s relationship with house price. It also performs embedded feature selection by shrinking some coefficients to zero, which makes it easier to explain which variables matter most. SVM is usually less interpretable, especially with the RBF kernel, because the decision boundary is formed in a transformed feature space rather than by straightforward feature coefficients. A linear SVM is more interpretable than RBF, but still not as transparent as Lasso for explaining individual feature effects.  In terms of computational complexity, Lasso is typically more efficient and easier to scale to large datasets than kernel SVM. RBF SVM can become computationally expensive as the dataset grows because it must compute relationships between many pairs of samples, while linear SVM is faster than RBF but still less informative for coefficient-based interpretation.

Overall, the models show good but not perfect performance, with the regression task performing slightly stronger in explanatory power and the RBF SVM outperforming the linear SVM in classification. The results suggest that the housing data contains some non-linear structure, especially for the class-based task.

### Regression model
The Lasso regression model achieved an MAE of 38,336.14, meaning its predictions are off by about $38k on average. Its RMSE of 53,256.40 shows that some errors are larger than the average absolute error, which is expected because RMSE penalizes large deviations more heavily. The R² score of 0.7757 indicates that the model explains about 77.6% of the variance in house prices, which is a strong result for a linear regularized model.

### Classification models
The RBF SVM is the best classifier here, with accuracy 0.7548 and F1-score 0.7557. It clearly outperforms the Linear SVM, which has accuracy 0.7294 and F1-score 0.7306. This gap suggests that the class boundaries are not fully linear, so the RBF kernel captures the structure better.

### Class-wise behavior
Both SVM models do best on the Low and High categories and perform worst on Medium. For the RBF model, Medium has an F1-score of 0.66, while for the Linear SVM it drops to 0.63. This is typical because the middle class overlaps with both extremes, making it harder to separate cleanly.

### Combined interpretation
Taken together, the regression and classification results show a consistent pattern, demonstrating that the dataset is reasonably predictable, but not simple enough for a purely linear boundary to fully capture. The Lasso regression model is effective for estimating continuous house prices, while the RBF SVM is the better option for categorizing houses into price groups. The linear SVM is acceptable as a baseline, but it is less suitable than the RBF version for this problem.

### Final assessment
Lasso regression is a good choice for the regression task because it explains a substantial portion of variance while remaining interpretable and regularized. In the classification task, the RBF SVM achieves higher accuracy and better balanced class performance than the linear SVM. However, the the Medium class remains the hardest to classify, indicating overlap between adjacent price groups. We can read this as indicative/representative of the real world environment.

## Data set Limitations and Potential Sources of Bias.

The California Housing dataset has several limitations. It is based on grouped census block data rather than individual house transactions, so it may not fully capture local variation in pricing. The target values are also capped in many versions of the dataset, which can compress the upper end of the price distribution and reduce model realism.

A major source of bias is geographic concentration. Housing prices are strongly influenced by location, and if some regions are underrepresented, the model may learn patterns that do not generalize well. Another bias comes from socio-economic factors embedded in features like median income, which may act as proxies for broader demographic or inequality patterns.

There is also potential bias from the engineered classification target. When continuous house values are split into classes, the choice of thresholds or quantiles can oversimplify a naturally continuous problem and create artificial category boundaries. This may especially affect the Medium class, which tends to overlap with both Low and High.

## Model Improvements and Alternative improvements.

### Model Improvements.
A first improvement would be to perform hyperparameter tuning. For Lasso, the alpha value should be selected using cross-validation. For SVM, both C and kernel-related parameters such as gamma for RBF should be tuned carefully to improve generalization.

A second improvement would be to explore better feature engineering. Location-based interactions, log transforms for skewed variables, and more informative ratios could improve both regression and classification performance. In addition, using robust scaling or outlier-resistant preprocessing may reduce the influence of extreme values.

A third improvement would be to assess class balance and threshold design more carefully. For classification, binary price categories may perform better and be easier to interpret than three classes, especially if Medium remains difficult to separate. If three classes are required, cost-sensitive learning or class weighting may help improve the model's performance on the middle category.

### Alternative Algorithms.
For regression, Ridge Regression is a good alternative if multicollinearity is strong and the goal is stable coefficient estimates. Random Forest Regressor and Gradient Boosting Regressor may outperform Lasso if the true relationships are non-linear. These tree-based methods also handle feature interactions more naturally.

For classification, Logistic Regression is a strong baseline if the task is binary and interpretability matters. Random Forest Classifier and Gradient Boosting Classifier are strong alternatives when non-linear structure is present, and they often outperform SVM on tabular data. If the dataset is large and the objective is predictive accuracy, boosted tree methods are often worth testing.

A practical modeling strategy would be to compare Lasso against Ridge and Gradient Boosting for regression, and compare SVM against Logistic Regression, Random Forest, and XGBoost for classification. That would provide a stronger basis for selecting the final model rather than relying on a single algorithm choice.
