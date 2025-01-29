```R
# Corrected code using exact matching with the %in% operator

df <- data.frame(col1 = 1:3, col10 = 4:6, col100 = 7:9)
cols_to_subset <- c("col1", "col100")
subset_df <- df[, cols_to_subset[cols_to_subset %in% names(df)]]
print(subset_df)

#Alternative solution using match function

df <- data.frame(col1 = 1:3, col10 = 4:6, col100 = 7:9)
cols_to_subset <- c("col1", "col100")
matched_cols <- match(cols_to_subset, names(df))
matched_cols <- matched_cols[!is.na(matched_cols)]
subset_df <- df[, matched_cols]
print(subset_df)
```