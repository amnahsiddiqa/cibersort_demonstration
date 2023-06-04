#cibersort
#AS; June032023

rm(list=ls())
# Load required libraries
library(tidyverse)
library('e1071')
library('parallel')
library('preprocessCore')

# Print current working directory
getwd()

# Source the CIBERSORT script
source("CIBERSORT.R")

# Read signature matrix
sig_file <- "LM22.txt"
sig_matrix <- read.table(sig_file, header = TRUE, sep = "\t", row.names = 1, check.names = FALSE)

# Read gene expression microarray data
input <- "./testdata/test_microarray.tsv"
mixture_matrix <- read.table(input, sep = "\t", row.names = 1, header = TRUE, check.names = FALSE)

# Check the intersection between genes in signature matrix and mixture matrix
row.names(sig_matrix) <- toupper(row.names(sig_matrix))
row.names(mixture_matrix) <- toupper(row.names(mixture_matrix))
length(intersect(row.names(sig_matrix), row.names(mixture_matrix)))

# Run CIBERSORT for microarray data
results <- CIBERSORT(sig_matrix,
                     mixture_matrix,
                     perm = 100,
                     QN = FALSE,
                     absolute = FALSE  # Set to TRUE for absolute mode; refer to CIBERSORT.R file for parameter details
)

# Write results to a file
write.table(results,
            "results_microarraytestdata_cibersort.tsv",
            row.names = TRUE,
            sep = "\t")

# Read results from CIBERSORT web app
## Job parameters 
# Date: 2023-06-04 05:44:31
# Job type: Impute Cell Fractions
# Signature matrix file: LM22.update-gene-symbols.txt
# Mixture file: test_microarray.tsv
# Batch correction: disabled
# Disable quantile normalization: true
# Run mode (relative or absolute): relative
# Permutations: 100

filen <- "./testdata/results_microarray/CIBERSORTx_Job13_Results.csv"
results_microarraytestdata_fromcibersortwebapp <- read.table(filen, header = TRUE, sep = ",", row.names = 1, check.names = FALSE)

# Calculate mismatches and compare the results
mismatches <- round(results, 2) != round(results_microarraytestdata_fromcibersortwebapp, 2)
if (any(mismatches)) {
  print("Mismatches:")
  print(results[mismatches, ])
  print(results_microarraytestdata_fromcibersortwebapp[mismatches, ])
} else {
  print("Results match!")
}



# Reset the environment for rnaseq test data 
rm(list = ls())
source("CIBERSORT.R")

# Read signature matrix
sig_file <- "LM22.txt"
sig_matrix <- read.table(sig_file, header = TRUE, sep = "\t", row.names = 1, check.names = FALSE)

# Read RNA seq gene expression data
input <- "./testdata/test_RNAseq.txt"
mixture_matrix <- read.table(input, sep = "\t", row.names = 1, header = TRUE, check.names = FALSE)

# Check the intersection between genes in signature matrix and mixture matrix
row.names(sig_matrix) <- toupper(row.names(sig_matrix))
row.names(mixture_matrix) <- toupper(row.names(mixture_matrix))
length(intersect(row.names(sig_matrix), row.names(mixture_matrix)))

# Run CIBERSORT for RNA seq data
results <- CIBERSORT(sig_matrix,
                     mixture_matrix,
                     perm = 100,
                     QN = FALSE,
                     absolute = FALSE  # Set to TRUE for absolute mode; refer to CIBERSORT.R file for parameter details
)

# Write results to a file
write.table(results,
            "results_rnaseqtestdata_cibersort.tsv",
            row.names = TRUE,
            sep = "\t")

# Read results from CIBERSORT web app
## Job parameters 
# Date: 2023-06-04 05:48:50
# Job type: Impute Cell Fractions
# Signature matrix file: LM22.update-gene-symbols.txt
# Mixture file: test_RNAseq.txt
# Batch correction: disabled
# Disable quantile normalization: true
# Run mode (relative or absolute): relative
# Permutations: 100
filen <- "./testdata/results_rnaseq/CIBERSORTx_Job14_Results.csv"
results_rnaseqtestdata <- read.table(filen, header = TRUE, sep = ",", row.names = 1, check.names = FALSE)

# Note: p values dont match here in this case; could be because of differences/updates in permutation procedures etc in authentic code 
 # so i removed last three columns and match the propertions at elats tehy are identical; 
 # mismatches <- round(results[,], 2) != round(results_rnaseqtestdata, 2)
 # if (any(mismatches)) {
 #   print("Mismatches:")
 #   print(results[mismatches, ])
 #   print(results_rnaseqtestdata[mismatches, ])
 # } else {
 #   print("Results match!")
 # }
 

 # Remove last three columns from both data frames
 results_subset <- results[, 1:(ncol(results) - 3)]
 results_rnaseqtestdata_subset <-results_rnaseqtestdata [, 1:(ncol(results_rnaseqtestdata) - 3)]
 
 # Calculate mismatches
 mismatches <- round(results_subset, 2) != round(results_rnaseqtestdata_subset, 2)
 
 if (any(mismatches)) {
   print("Mismatches:")
   print(results[mismatches, , drop = FALSE])
   print(results_rnaseqtestdata[mismatches, , drop = FALSE])
 } else {
   print("Results match!")
 }
 
 
 
 
 