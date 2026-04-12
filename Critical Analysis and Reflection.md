###### Critical Analysis and Reflection

## Compare Lasso Regresion and SVM interms of Interpretability and Computability

Interpretability : 
Lasso Regression is very easy to interprete  beacause it is  a linear model.It gives a clear and direct weight for eaach feature.Lasso also eliminates useless fetures leaving you with a short list which is easy to explain to the stakeholders why a certain decisio was made.
SVM is abit hard to interprete since it focuses more on the gap between the data points than the variables themselves

Computation:
Lasso is very fast and lightweight because it uses optimisation techniques to converge ver quickly even with like a thousand features while SVM is slower beacuse it calcultes distances between data points whichmeans the bigger the dataset grows the slow the model becomes.
In terms of prediction, Lasso  Regression requires lmost zero memory because once trained , making a prediction is a simple math equation where as SVM uses alot of RAM since the computer has to keep Spport Vctors in its memory.
In conclusion Lasso Rgression is more interpretable and computatopnally effiecient which makes it a suitable choice for scenarios where the stakeholders need to understand the model nd how it actually reasons.SVM is best suitable for classification tasks where the relationship between features and classes is abit complex and non linear. 

# Data set Limitations and Potential Sources of Bias.

The California dataset was extracted from the 1990 US Census which makes it about 30years old.Within this period the market price for california has changed ,prices have increased ,new districts have been developed nd the economic situations have greatly changed .This implies that the predictions made by the models would not be that reliable for the current housing markets.
The Dataset also covers only California so models trained on this data cannot be used to generalise the housing markets  in other states which have different economic structures, population densities and planning policies. The dataset also doesnt include certain features like proximity to work stations, or public transport accessibility which are normally known to sigificantly affcet the prices of houses and their absence can affect the model prediction perfomance.  

## Model Improvements and Alternative improvements.

# Model Improvements.
We could use Bayesian Optimisation rather than a simple GridSearch to handle hyperparameter Tuning.
We could also use RobustScaler to handle outliers in certain features since SVMs are highly sensitive to feature scalers.
Since the dataset includes complex spartial dependencies, we can choose to use Radial Basis Function instead of using  a linear Kernel
We can generate polynomial features before applying Lasso to capture non linear trends while maintaning Interpretability .This is because the relationship between meadin_income and house value is ot strictly linear.

# Alternative Algorithms.
XGBoost is a high perfomance and gold standard for tabular data like the California housing dataset because it can handle missing values and non llinear relationships very well.It achieves higher accuracy than SVM withless preprocessing required.

Random Forest would also be a good alternative fo SVM because it fixes overfitting while handling outliers.It also provides inbuilt feature importance which is likely to outperform both lasso and SVM.

Geographically Weighted Regression allows the model coefficients to vary across space since the dataset relies more on latitude and longtitude.

