###############################################################################
# Exploartory Data Analysis
###############################################################################

# we will explore the heart dataset

heart=read.csv(file.choose())


# load our library
library(DataExplorer)
library(data.table)

## explore our dataset
names(heart)
head(heart)
str(heart)
summary(heart)

## changing our data type
heartDT=data.table(heart)



####################  grouping and frequency

drop_columns(heartDT, "fbs")

## grouping categories for discreate features

group_category(heartDT, "ChestPain",0) # view frequency


group_category(heartDT, "ChestPain", 0, "Chol")  # view frequency based on another measure

group_category(heartDT, "ChestPain", 0, "Age")


##################### plotting 

#discrete features (categorical data)

plot_bar(heartDT)
#Continuous Features
plot_boxplot(heartDT,by="AHD")


# correlation plot

plot_correlation(heartDT)

plot_correlation(heartDT, type="d")  # only discrete features

plot_correlation(heartDT, type="c")  # only continous features

# density plot

plot_density(heartDT)  # only for numerical columns

# histogram

plot_histogram(heartDT) # only for numeric columns

# scatterplot

plot_scatterplot(heartDT,"Age")  # using age as y axis

# D3 network graph
# visualize structure of the dataset
plot_str(heartDT, type="radial")


######## spliting data into discrete and continous parts

# will generate 2 data tables for continous and discrete
 output=split_columns(heartDT)

output$discrete

output$continous




