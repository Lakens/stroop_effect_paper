# Converts the raw, space-delimited Stroop data file into a comma-separated
# file with lowercase, underscore-separated column names, matching the
# codebook in ../documentation/stroop_data_codebook.csv.
#
# Run with the working directory set to this file's own location (code/).
#
# Raw data: ../data/raw/stroop_raw.csv (space-delimited; downloaded from
# https://raw.githubusercontent.com/Lakens/Stroop/master/stroop.txt)
# Processed data: ../data/stroop_data.csv (comma-separated)

raw_data <- read.csv("../data/raw/stroop_raw.csv", sep = " ", header = TRUE)

processed_data <- raw_data
names(processed_data) <- c("participant_id", "congruent", "incongruent", "year")

write.csv(processed_data, "../data/stroop_data.csv", row.names = FALSE)
