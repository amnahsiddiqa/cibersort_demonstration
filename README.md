# cibersort_demonstration


## CIBERSORTx, Cell Fraction analysis module
The CIBERSORTx Cell Fractions module allows the estimation of cell subpopulation proportions in bulk tissue expression profiles. It supports deconvolution of bulk RNA-Seq data using signature genes derived from single-cell transcriptomes or sorted cell populations.


More under literature directory tutorial2; 


## download licensed version :

The official licensed version of CIBERSORTx can be downloaded from the official website: https://cibersortx.stanford.edu/about.php

The current version used in this demonstration was downloaded from https://github.com/IOBR/IOBR/blob/905127ffa32aee5e1fa6c305c2e14e7c918a5967/R/CIBERSORT.R. Please note that this version is not an official release and is solely used for test purposes. It is recommended to adhere to official policies and use the licensed version for production purposes. This version is used here for quick tests and to ensure smooth transition once the licensed version is obtained.

For more information, refer to the  wiki.


## Comparison of Results 

This demonstration aims to compare the results obtained from CIBERSORTx ([web version](https://cibersortx.stanford.edu/about.php)) and the local R script version. Two test datasets are provided in the testdata directory, along with job parameters indicated in the R script file.

Note: There are differences in p-values between the two versions. This is likely due to updates in the permutation procedure for testing significance. As of now, since I do not have the updated licensed code, I cannot provide further details on this discrepancy. However, apart from the p-values, the cell fraction values are identical.

Please pay attention to the parameters used in the analysis. There are certain details that need to be taken care of individually. This demonstration serves as a minimal test for reproducibility (web version versus script version, with the licensed version not yet available to me). Therefore, even this part is subject to questioning until the licensed version is obtained.

## Acknowledgements:

Foundation paper by cibersort team ; 
Gentles, A. J., Newman, A. M., Liu, C. L., Bratman, S. V., Feng, W., Kim, D., ... & Alizadeh, A. A. (2015). The prognostic landscape of genes and infiltrating immune cells across human cancers. Nature medicine, 21(8), 938-945.


cibersortx paper:

Newman, A. M., Steen, C. B., Liu, C. L., Gentles, A. J., Chaudhuri, A. A., Scherer, F., ... & Alizadeh, A. A. (2019). Determining cell type abundance and expression from bulk tissues with digital cytometry. Nature biotechnology, 37(7), 773-782.


