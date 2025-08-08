data(PlantGrowth)
boxplot(weight ~ group, data=PlantGrowth, main="Plant Growth by Group")

# View dataset
head(PlantGrowth)
summary(PlantGrowth)
table(PlantGrowth$group)

# Descriptive Statistics
install.packages("dplyr")
library(dplyr)

PlantGrowth %>%
  group_by(group) %>%
  summarise(
    mean_weight = mean(weight),
    sd_weight = sd(weight),
    n = n()
  )

# Boxplot with jittered Points
install.packages("ggplot2")
library(ggplot2)

ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) +
  geom_boxplot(alpha = 0.6) +
  geom_jitter(width = 0.1, size = 2, alpha = 0.7) +
  labs(title = "Plant Weight by Group",
       x = "Group",
       y = "Weight") +
  theme_minimal()

# Mean Plot with Error Bars
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)

stats <- PlantGrowth %>%
  group_by(group) %>%
  summarise(
    mean_weight = mean(weight),
    se = sd(weight) / sqrt(n())
  )

ggplot(stats, aes(x = group, y = mean_weight, fill = group)) +
  geom_col(alpha = 0.7) +
  geom_errorbar(aes(ymin = mean_weight - se, ymax = mean_weight + se),
                width = 0.2, color = "black") +
  geom_text(aes(label = round(mean_weight, 2)), vjust = -1) +
  labs(title = "Mean Plant Weight by Group",
       x = "Group",
       y = "Mean Weight") +
  theme_minimal()


# ANOVA
model <- aov(weight ~ group, data=PlantGrowth)
summary(model)

# Post-hoc test
TukeyHSD(model)

# Violin Plot
ggplot(PlantGrowth, aes(x = group, y = weight, fill = group)) +
  geom_violin(trim = FALSE, alpha = 0.6) +
  geom_boxplot(width = 0.1, fill = "white") +
  labs(title = "Distribution of Plant Weights by Group",
       x = "Group",
       y = "Weight") +
  theme_minimal()

