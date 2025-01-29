```R
# This code attempts to subset a data frame using a character vector
# containing column names, but it produces unexpected results due to
# partial matching.

df <- data.frame(col1 = 1:3, col10 = 4:6, col100 = 7:9)
cols_to_subset <- c("col1", "col100")
subset_df <- df[, cols_to_subset]
print(subset_df)
```