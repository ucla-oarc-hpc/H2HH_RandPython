library(dplyr)

# Sample data
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 35, 40, 45),
  Score = c(85, 90, 78, 88, 92)
)

print("Original Data:")
print(data)

# Filter data for people older than 30
filtered_data <- data %>%
  filter(Age > 30)

print("Filtered Data (Age > 30):")
print(filtered_data)

# Summarize to get the average score
average_score <- data %>%
  summarize(AvgScore = mean(Score))

print("Average Score:")
print(average_score)
