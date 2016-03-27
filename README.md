### Getting & Cleaning Data: Assignment

This is the course assignment for the Getting & Cleaning Data Course in the Data Science Specialization on Coursera.

### Overview

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare a tidy data that can be used for later analysis. 

The data is on wearables, and this link to the source organization can elaborate further:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data itself is available here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The submission consists of the following files:
1. run_analysis.R
2. README.md
3. CodeBook.md

run_analysis.R is the only script required to run the analysis.

### Instructions
1. Checkout the code using 'git checkout https://github.com/aaronghunter/Dat_Sci_C3_Getting_Cleaning_Data.git `directory`', where `directory` is your working folder.
2. Load RStudio and check your working directory using getwd(). If your working directory is not `directory`, set it to `directory` using setwd("`directory`").
3. Load the R script (run_analysis.R) using source.
4. Run the script using run_analysis().
5. Enjoy the resultant files, Complete_Data.txt and Calculated_Tiny_Data.txt in `directory`.

### Dependencies & Notes
1. The script was written on Windows, so the download method is not specified. If you wish to run it on OSX, you must add 'method=curl' to download.file().
2. The script assumes you have plyr installed, if you do not, you can install it using install.packages("plyr").
3. The script assumes you have data.table installed, if you do not, you can install it using install.packages("data.table").