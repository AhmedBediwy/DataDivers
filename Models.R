# Load data ==============================================================================
nhanes <- read.csv("Nhanes1318.csv")
View(nhanes)
dim(nhanes)

# Data preparation =======================================================================
# count NA of each column
colSums(is.na(nhanes))

# select tha columns without missing variables
nhanes <- nhanes[, colSums(is.na(nhanes)) == 0]

# 10 predictors
