# Critical Analysis and Reflection

## Compare Lasso Regression and SVM in terms of Interpretability and Computability

Lasso Regression is generally more interpretable than SVM because its coefficients directly show the direction and strength of each feature’s relationship with house price. It also performs embedded feature selection by shrinking some coefficients to zero, which makes it easier to explain which variables matter most.

SVM is usually less interpretable, especially with the RBF kernel, because the decision boundary is formed in a transformed feature space rather than by straightforward feature coefficients. A linear SVM is more interpretable than RBF, but still not as transparent as Lasso for explaining individual feature effects.

In terms of computational complexity, Lasso is typically more efficient and easier to scale to large datasets than kernel SVM. RBF SVM can become computationally expensive as the dataset grows because it must compute relationships between many pairs of samples, while linear SVM is faster than RBF but still less informative for coefficient-based interpretation.

## Data set Limitations and Potential Sources of Bias.

The California Housing dataset has several limitations. It is based on grouped census block data rather than individual house transactions, so it may not fully capture local variation in pricing. The target values are also capped in many versions of the dataset, which can compress the upper end of the price distribution and reduce model realism.

A major source of bias is geographic concentration. Housing prices are strongly influenced by location, and if some regions are underrepresented, the model may learn patterns that do not generalize well. Another bias comes from socio-economic factors embedded in features like median income, which may act as proxies for broader demographic or inequality patterns.

There is also potential bias from the engineered classification target. When continuous house values are split into classes, the choice of thresholds or quantiles can oversimplify a naturally continuous problem and create artificial category boundaries. This may especially affect the Medium class, which tends to overlap with both Low and High.

## Model Improvements and Alternative improvements.

### Model Improvements.
A first improvement would be to perform hyperparameter tuning. For Lasso, the alpha value should be selected using cross-validation. For SVM, both C and kernel-related parameters such as gamma for RBF should be tuned carefully to improve generalization.

A second improvement would be to explore better feature engineering. Location-based interactions, log transforms for skewed variables, and more informative ratios could improve both regression and classification performance. In addition, using robust scaling or outlier-resistant preprocessing may reduce the influence of extreme values.

A third improvement would be to assess class balance and threshold design more carefully. For classification, binary price categories may perform better and be easier to interpret than three classes, especially if Medium remains difficult to separate. If three classes are required, cost-sensitive learning or class weighting may help.

### Alternative Algorithms.
For regression, Ridge Regression is a good alternative if multicollinearity is strong and the goal is stable coefficient estimates. Random Forest Regressor and Gradient Boosting Regressor may outperform Lasso if the true relationships are non-linear. These tree-based methods also handle feature interactions more naturally.

For classification, Logistic Regression is a strong baseline if the task is binary and interpretability matters. Random Forest Classifier and Gradient Boosting Classifier are strong alternatives when non-linear structure is present, and they often outperform SVM on tabular data. If the dataset is large and the objective is predictive accuracy, boosted tree methods are often worth testing.

A practical modeling strategy would be to compare Lasso against Ridge and Gradient Boosting for regression, and compare SVM against Logistic Regression, Random Forest, and XGBoost for classification. That would provide a stronger basis for selecting the final model rather than relying on a single algorithm choice.
