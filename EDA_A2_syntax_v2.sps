* Encoding: UTF-8.


** model 1: region - nominal, all other variables - numeric **


set seed=20.

CATREG VARIABLES=charges age sex bmi smoker region
  /ANALYSIS=charges(LEVEL=NUME) WITH age(LEVEL=NUME) sex(LEVEL=NUME) bmi(LEVEL=NUME) 
    smoker(LEVEL=NUME) region(LEVEL=NOMI)
  /DISCRETIZATION=charges(GROUPING,NCAT=7,DISTR=NORMAL) 
  /MISSING=charges(LISTWISE) age(LISTWISE) sex(LISTWISE) bmi(LISTWISE) smoker(LISTWISE) 
    region(LISTWISE)
  /MAXITER=100
  /CRITITER=.00001
  /PRINT=R COEFF ANOVA 
  /INITIAL=NUMERICAL
  /PLOT=TRANS(charges age sex bmi smoker region)(20) 
  /SAVE= PRED
  /REGULARIZATION=NONE
  /RESAMPLE=BOOTSTRAP(1000).


** model 2
    "age - numeric
    sex - nominal
    BMI - ordinal
    smoker - nominal
    region - nominal
    charges - numeric; discretisation - multiplying **
    
set seed = 20. 

DATASET ACTIVATE DataSet1.
DATASET DECLARE  discretised_charges.
CATREG VARIABLES=charges age sex bmi smoker region
  /ANALYSIS=charges(LEVEL=NUME) WITH age(LEVEL=NUME) sex(LEVEL=NOMI) bmi(LEVEL=ORDI) 
    smoker(LEVEL=NOMI) region(LEVEL=NOMI)
  /DISCRETIZATION=charges(MULTIPLYING) 
  /MISSING=charges(LISTWISE) age(LISTWISE) sex(LISTWISE) bmi(LISTWISE) smoker(LISTWISE) 
    region(LISTWISE)
  /MAXITER=100
  /CRITITER=.00001
  /PRINT=R COEFF ANOVA 
  /INITIAL=NUMERICAL
  /PLOT=TRANS(charges age sex bmi smoker region)(20) 
  /SAVE= PRED
  /OUTFILE=DISCRDATA(discretised_charges)
  /REGULARIZATION=NONE
  /RESAMPLE=BOOTSTRAP(1000).


** model 3
    "age - numeric
    sex - nominal
    BMI - spline ordinal
    smoker - ordinal
    region - nominal
    charges - numeric; discretisation - multiplying **


set seed = 20. 

DATASET DECLARE  discretised_charges.
CATREG VARIABLES=charges age sex bmi smoker region
  /ANALYSIS=charges(LEVEL=NUME) WITH age(LEVEL=NUME) sex(LEVEL=NOMI) 
    bmi(LEVEL=SPORD,DEGREE=2,INKNOT=2) smoker(LEVEL=ORDI) region(LEVEL=NOMI)
  /DISCRETIZATION=charges(MULTIPLYING) 
  /MISSING=charges(LISTWISE) age(LISTWISE) sex(LISTWISE) bmi(LISTWISE) smoker(LISTWISE) 
    region(LISTWISE)
  /MAXITER=100
  /CRITITER=.00001
  /PRINT=R COEFF ANOVA 
  /INITIAL=NUMERICAL
  /PLOT=TRANS(charges age sex smoker region)(20) 
  /SAVE= PRED
  /OUTFILE=DISCRDATA(discretised_charges)
  /REGULARIZATION=NONE
  /RESAMPLE=BOOTSTRAP(1000).
