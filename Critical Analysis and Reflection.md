# Critical Analysis and Reflection
## Compare Lasso Regresion and SVM interms of Interpretability and Computability

Interpretability : 
Lasso Regression is very easy to interprete  beacause it is  a linear model.It gives a clear and direct weight for eaach feature.Lasso also eliminates useless fetures leaving you with a short list which is easy to explain to the stakeholders why a certain decisio was made.
SVM is abit hard to interprete since it focuses more on the gap between the data points than the variables themselves
Computation
Lasso is very fast and lightweight because it uses optimisation techniques to converge ver quickly even with like a thousand features while SVM is slower beacuse it calcultes distances between data points whichmeans the bigger the dataset grows the slow the model becomes.
In terms of prediction, Lasso  Regression requires lmost zero memory because once trained , making a prediction is a simple math equation where as SVM uses alot of RAM since the computer has to keep Spport Vctors in its memory.
In conclusion Lasso Rgression is more interpretable and computatopnally effiecient which makes it a suitable choice for scenarios where the stakeholders need to understand the model nd how it actually reasons.SVM is best suitable for classification tasks where the relationship between features and classes is abit complex and non linear. 
