#install.packages("e1071")
library(e1071)

download.file('https://github.com/lse-my474/pset_data/raw/main/mnist.csv', 'mnist.csv')

digit_data <- read.csv('mnist.csv')
digit_df <- data.frame(digit_data)
digit_df$digit <- as.factor(digit_df$digit)

# Split into train and test
N <- floor(nrow(digit_data)*.2)
tr <- sample(1:nrow(digit_data), N)