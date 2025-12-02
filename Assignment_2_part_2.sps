* Encoding: UTF-8.

** Frequency table as initial exploration

DATASET ACTIVATE DataSet1.
FREQUENCIES VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ORDER=ANALYSIS.

** Setting all to NOMINAL

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=NOMI) Motivation_2(WEIGHT=1,LEVEL=NOMI) 
    Motivation_3(WEIGHT=1,LEVEL=NOMI) Motivation_4(WEIGHT=1,LEVEL=NOMI) 
    Motivation_5(WEIGHT=1,LEVEL=NOMI) Motivation_6(WEIGHT=1,LEVEL=NOMI) 
    Motivation_7(WEIGHT=1,LEVEL=NOMI) Motivation_8(WEIGHT=1,LEVEL=NOMI) 
    Motivation_9(WEIGHT=1,LEVEL=NOMI) Motivation_10(WEIGHT=1,LEVEL=NOMI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) Motivation_7(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=2
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=BOOTSTRAP (1000 95 BALANCED PROCRU)
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT=OBJECT(20) LOADING(20)  VAF TRANS(Motivation_1 Motivation_2 Motivation_3 Motivation_4 
    Motivation_5 Motivation_6 Motivation_7 Motivation_8 Motivation_9 Motivation_10) (20) 
    RESID(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10 ) (20)  LDELLAREA(>AREA 0) OBELLAREA(>STDEV 2) NELLPNT(40)
  /SAVE=TRDATA.

** Scaling level set or ORDINAL

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) Motivation_7(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=2
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=BOOTSTRAP (1000 95 BALANCED PROCRU)
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT=OBJECT(20) LOADING(20)  VAF TRANS(Motivation_1 Motivation_2 Motivation_3 Motivation_4 
    Motivation_5 Motivation_6 Motivation_7 Motivation_8 Motivation_9 Motivation_10) (20) 
    RESID(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10 ) (20)  LDELLAREA(>AREA 0) OBELLAREA(>STDEV 2) NELLPNT(40)
  /SAVE=TRDATA.

** DOING SCREE PLOT

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 
    Motivation_6 Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI)
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING)
  /MISSING=LISTWISE
  /DIMENSION=10
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=NONE
  /PRINT=CORR LOADING QUANT VAF
  /PLOT=VAF TRANS
  /SAVE=TRDATA.

FACTOR
  /VARIABLES TRA1_3 TRA2_3 TRA3_3 TRA4_3 TRA5_3 TRA6_3 TRA7_3 TRA8_3 TRA9_3 TRA10_3
  /MISSING LISTWISE 
  /ANALYSIS TRA1_3 TRA2_3 TRA3_3 TRA4_3 TRA5_3 TRA6_3 TRA7_3 TRA8_3 TRA9_3 TRA10_3
  /PRINT INITIAL
  /PLOT EIGEN
  /CRITERIA KAISER  MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /ROTATION NOROTATE
  /METHOD=CORRELATION.

** It looks like 2 is a good option, so we now go for 1, 2 and 3 CATPCA to make their scree plot
    

** with 1

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) Motivation_7(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=1
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=BOOTSTRAP (1000 95 BALANCED PROCRU)
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT= LDELLAREA(>AREA 0) OBELLAREA(>STDEV 2) NELLPNT(40)
  /SAVE=TRDATA.

FACTOR
  /VARIABLES TRA1_4 TRA2_4 TRA3_4 TRA4_4 TRA5_4 TRA6_4 TRA7_4 TRA8_4 TRA9_4 TRA10_4
  /MISSING LISTWISE 
  /ANALYSIS TRA1_4 TRA2_4 TRA3_4 TRA4_4 TRA5_4 TRA6_4 TRA7_4 TRA8_4 TRA9_4 TRA10_4
  /PRINT INITIAL
  /PLOT EIGEN
  /CRITERIA KAISER  MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /ROTATION NOROTATE
  /METHOD=CORRELATION.

** with 2

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) Motivation_7(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=2
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=BOOTSTRAP (1000 95 BALANCED PROCRU)
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT= LDELLAREA(>AREA 0) OBELLAREA(>STDEV 2) NELLPNT(40)
  /SAVE=TRDATA.

FACTOR
  /VARIABLES TRA1_5 TRA2_5 TRA3_5 TRA4_5 TRA5_5 TRA6_5 TRA7_5 TRA8_5 TRA9_5 TRA10_5
  /MISSING LISTWISE 
  /ANALYSIS TRA1_5 TRA2_5 TRA3_5 TRA4_5 TRA5_5 TRA6_5 TRA7_5 TRA8_5 TRA9_5 TRA10_5
  /PRINT INITIAL
  /PLOT EIGEN
  /CRITERIA KAISER  MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /ROTATION NOROTATE
  /METHOD=CORRELATION.


** with 3

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) Motivation_7(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) Motivation_7(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=3
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /RESAMPLE=BOOTSTRAP (1000 95 BALANCED PROCRU)
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT= LDELLAREA(>AREA 0) OBELLAREA(>STDEV 2) NELLPNT(40)
  /SAVE=TRDATA.

FACTOR
  /VARIABLES TRA1_6 TRA2_6 TRA3_6 TRA4_6 TRA5_6 TRA6_6 TRA7_6 TRA8_6 TRA9_6 TRA10_6
  /MISSING LISTWISE 
  /ANALYSIS TRA1_6 TRA2_6 TRA3_6 TRA4_6 TRA5_6 TRA6_6 TRA7_6 TRA8_6 TRA9_6 TRA10_6
  /PRINT INITIAL
  /PLOT EIGEN
  /CRITERIA KAISER  MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /ROTATION NOROTATE
  /METHOD=CORRELATION.


** SELECTED : 2 DIM

CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_7(WEIGHT=1,LEVEL=ORDI) Motivation_8(WEIGHT=1,LEVEL=ORDI) 
    Motivation_9(WEIGHT=1,LEVEL=ORDI) Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) 
    Motivation_7(RANKING) Motivation_8(RANKING) Motivation_9(RANKING) 
    Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) 
    Motivation_7(LISTWISE) Motivation_8(LISTWISE) Motivation_9(LISTWISE) 
    Motivation_10(LISTWISE)
  /DIMENSION=2
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /ROTATION=VARIMAX KAISER
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_7 Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 Motivation_7 
    Motivation_8 Motivation_9 Motivation_10) VAF
 /PLOT=LOADING(20)
  /SAVE=TRDATA.

** without variable 7
    
CATPCA VARIABLES=Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_8 Motivation_9 Motivation_10
  /ANALYSIS=Motivation_1(WEIGHT=1,LEVEL=ORDI) Motivation_2(WEIGHT=1,LEVEL=ORDI) 
    Motivation_3(WEIGHT=1,LEVEL=ORDI) Motivation_4(WEIGHT=1,LEVEL=ORDI) 
    Motivation_5(WEIGHT=1,LEVEL=ORDI) Motivation_6(WEIGHT=1,LEVEL=ORDI) 
    Motivation_8(WEIGHT=1,LEVEL=ORDI) Motivation_9(WEIGHT=1,LEVEL=ORDI) 
    Motivation_10(WEIGHT=1,LEVEL=ORDI) 
  /DISCRETIZATION=Motivation_1(RANKING) Motivation_2(RANKING) Motivation_3(RANKING) 
    Motivation_4(RANKING) Motivation_5(RANKING) Motivation_6(RANKING) 
    Motivation_8(RANKING) Motivation_9(RANKING) Motivation_10(RANKING) 
  /MISSING=Motivation_1(LISTWISE) Motivation_2(LISTWISE) Motivation_3(LISTWISE) 
    Motivation_4(LISTWISE) Motivation_5(LISTWISE) Motivation_6(LISTWISE) 
    Motivation_8(LISTWISE) Motivation_9(LISTWISE) Motivation_10(LISTWISE)
  /DIMENSION=2
  /NORMALIZATION=VPRINCIPAL
  /MAXITER=100
  /CRITITER=.00001
  /ROTATION=VARIMAX KAISER
  /PRINT=CORR DESCRIP(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_8 Motivation_9 Motivation_10) LOADING(NOSORT) OBJECT OCORR 
    QUANT(Motivation_1 Motivation_2 Motivation_3 Motivation_4 Motivation_5 Motivation_6 
    Motivation_8 Motivation_9 Motivation_10) VAF
  /PLOT=LOADING(20)
  /SAVE=TRDATA.






