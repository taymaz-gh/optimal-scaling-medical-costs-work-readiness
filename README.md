## Introduction

This project applies optimal scaling methods to two exploratory-data-analysis problems involving mixed and ordinal data:

1. predicting individual medical insurance charges from demographic and health-related characteristics;
2. investigating the latent dimensional structure of work-readiness questionnaire items.

Both analyses are performed in SPSS using optimal scaling methods, which allow categorical and ordinal variables to be transformed while respecting their measurement properties.

### Part 1: Optimal Scaling Regression

The first analysis uses a subset of the Medical Cost Personal Dataset to predict individual medical insurance charges from:

- age;
- sex;
- body mass index (BMI);
- smoking status;
- residential region.

Optimal Scaling Regression (CATREG) is used to investigate whether flexible transformations of the predictors improve model fit and predictive performance compared with a more restrictive numeric specification.

Several models with different scaling and discretization choices are compared. The analysis considers:

- numeric and nominal scaling;
- spline-based nonlinear transformations for age and BMI;
- grouping-based discretization of the outcome;
- standardized regression coefficients;
- predictor importance;
- tolerance statistics for multicollinearity;
- Apparent Prediction Error (APE);
- Expected Prediction Error (EPE) estimated using bootstrap resampling.

The results indicate that smoking status is the strongest predictor of medical charges, followed by age and BMI, while sex and residential region contribute comparatively little.

Transformation plots also reveal nonlinear relationships between medical costs and both age and BMI, motivating the use of flexible optimal-scaling transformations.

### Part 2: Optimal Scaling Dimension Reduction

The second analysis investigates ten Likert-scale questionnaire items designed to measure work readiness among partially unemployed benefit recipients.

Because the items are ordinal, Categorical Principal Components Analysis (CATPCA) is used to estimate optimal category quantifications while reducing dimensionality.

The analysis evaluates:

- nominal versus ordinal scaling;
- transformation stability using bootstrap confidence intervals;
- the number of components to retain;
- poorly represented or unstable questionnaire items;
- Varimax rotation;
- component loadings and interpretability.

A two-dimensional ordinal CATPCA solution is selected. One item shows unstable quantifications, poor representation, and wide bootstrap confidence intervals and is therefore excluded from substantive interpretation.

The retained dimensions are interpreted as:

- **Dimension 1: Self-awareness / perceived need for change**
- **Dimension 2: Action orientation / behavioural engagement**

Varimax rotation does not materially increase variance accounted for, but improves interpretability by aligning items more clearly with the two dimensions.

The project demonstrates how optimal scaling can be used both for nonlinear regression with mixed measurement levels and for dimensionality reduction of ordinal questionnaire data.

---

## Summary

**Exploratory Data Analysis – Optimal Scaling:** Applied Optimal Scaling Regression (CATREG, `SPSS`) to model medical insurance charges using flexible numeric, nominal, and spline-based transformations, with APE/EPE and bootstrap-based model assessment. Applied ordinal CATPCA with bootstrap stability diagnostics and Varimax rotation to work-readiness questionnaire data, identifying two interpretable dimensions: self-awareness/perceived need for change and action orientation/behavioural engagement.