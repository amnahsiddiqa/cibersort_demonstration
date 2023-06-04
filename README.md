# cibersort_demonstration


## CIBERSORTx, Cell Fraction analysis module
Cell Fractions: This module enumerates the proportions of 
distinct cell subpopulations in bulk tissue expression profiles. 
Unlike its predecessor, CIBERSORTx supports deconvolution of 
bulk RNA-Seq data using signature genes derived from either 
single cell transcriptomes or sorted cell populations.


- more under literature directory tutorial2; 


## download licensed version :


- on your own from https://cibersortx.stanford.edu/about.php of CIBERSORT.R

- current version here is downloaded from https://github.com/IOBR/IOBR/blob/905127ffa32aee5e1fa6c305c2e14e7c918a5967/R/CIBERSORT.R  which is not an official release; it is solely for test purposes; i have applied to get a licenesed vetsion for myself and everybody should stick to policies; this is solely for quick tests etc so that i can be up and running once I get my licenced version; 

- read more on wiki 


## comparison of results returned by cibersort (https://cibersortx.stanford.edu/about.php) and local r script; (just my procrastinations) ;

- there are two testdatasets in testdata directory together with job parametrs  indicated in rscript file 
- Notes: p values differ; since i have not had updated licensed code by now; i can not comment on why this is happening but this is something to do with testing significance with permutations procedure updates; come back later for it; rest tyhe values are identical ; 

- be mindful of parameters ; tehre are few details one shoudl take care of on their own; this was justa minimal test on reproducibility for myself (web version versus scriot version(licensed version yet not avaialible to me; so even this part is questionable on my end!!! ));  

## Acknowledgements:

Foundation paper by cibersort team ; 
Gentles, A. J., Newman, A. M., Liu, C. L., Bratman, S. V., Feng, W., Kim, D., ... & Alizadeh, A. A. (2015). The prognostic landscape of genes and infiltrating immune cells across human cancers. Nature medicine, 21(8), 938-945.


cibersortx paper:

Newman, A. M., Steen, C. B., Liu, C. L., Gentles, A. J., Chaudhuri, A. A., Scherer, F., ... & Alizadeh, A. A. (2019). Determining cell type abundance and expression from bulk tissues with digital cytometry. Nature biotechnology, 37(7), 773-782.


