# Clustering Code 

# Load libraries 
library(densitycut) 
library(R.matlab)
library(tictoc)
memory.limit(size = 16284) # increase memory

# Loading Data from Mat Files 
data <- readMat('C:\\Users\\Marcus\\Desktop\\Sample_full.mat')
gc() # reduce memory usage 

# Clustering using Density Cut 
tic()
cluster.out = DensityCut(matrix(data$sample[1:6000000,1]))
toc() 

# Useful commands 
length(unique(cluster.out$cluster)) # check number of clusters 
length(unique(data$sample)) # find all unique data points 
rm(list = ls()) # clear workspace
