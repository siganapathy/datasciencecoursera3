This file provides the sequence of steps which can create a tidy data set out of 
smartphone measurement readings.

The file CodeBook.md contains the detailed descriptions of all the variables in the tidy data output and various steps executed on the input data to produce the tidy output.

1. download and unzip the assignment dataset
2. open R studio
3. set working directory as the root directory where the dataset related folders such as train, test etc are present
4. source the R file named "run_analysis.R" which has the solution for the same
5. Once the R file gets completed, the tidy data gets written to a file called
"tidy_data.txt".
6. To verify the same, please use the following command to load the output file into R workspace to a data frame.

sm1 <- read.table("./tidy_data.txt",header = TRUE)

Total no of observations in final tidy data: 180
Total no of variables in final tidy data: 82


