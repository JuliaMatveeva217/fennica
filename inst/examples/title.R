# Harmonize the titles
field <- "title"

# Raw data
original <- df.orig[[field]]

# Harmonize the raw data
x <- fennica::polish_title(original)

# Collect the results into a data.frame
df.tmp <- data.frame(original_row = df.orig$original_row,
		     title = x)

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.tmp, file = data.file)

# ------------------------------------------------------------

# Generate data summaries

message("Accepted entries in the preprocessed data")
s <- write_xtable(df.tmp[[field]], paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)

message("Discarded entries in the original data")

# NA values in the final harmonized data
inds <- which(is.na(df.tmp[[field]]))

# Original entries that were converted into NA
original.na <- df.orig[match(df.tmp$original_row[inds], df.orig$original_row), field]

# .. ie. those are "discarded" cases; list them in a table
tmp <- write_xtable(original.na, paste(output.folder, field, "_discarded.csv", sep = ""), count = TRUE)

# ------------------------------------------------------------

# Generate markdown summary in title.md
df <- readRDS(data.file)
tmp <- knit(input = paste(field, ".Rmd", sep = ""), 
            output = paste(field, ".md", sep = ""))


