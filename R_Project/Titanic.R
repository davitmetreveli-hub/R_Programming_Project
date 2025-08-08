data(Titanic)
titanic_df <- as.data.frame(Titanic)
#Basic Overview
head(titanic_df)
str(titanic_df)
# Survival by sex
library(ggplot2)
ggplot(titanic_df, aes(x=Sex, y=Freq, fill=Survived)) +
  geom_bar(stat="identity", position="dodge")

# Survival rate
aggregate(Freq ~ Sex + Class + Survived, data=titanic_df, sum)

#Overall Survival rate
total <- sum(titanic_df$Freq)
survived <- sum(titanic_df$Freq[titanic_df$Survived == "Yes"])
survival_rate <- survived / total * 100
survival_rate

#Survival By Sex
sex_survival <- aggregate(Freq ~ Sex + Survived, data=titanic_df, sum)

barplot(
  height = matrix(sex_survival$Freq, nrow=2, byrow=TRUE),
  beside = TRUE,
  names.arg = c("Female", "Male"),
  col = c("green", "red"),
  legend = c("Survived", "Died"),
  main = "Survival by Sex",
  ylab = "Number of Passengers"
)


#Survival By Class
class_survival <- aggregate(Freq ~ Class + Survived, data=titanic_df, sum)

barplot(
  height = matrix(class_survival$Freq, nrow=2, byrow=TRUE),
  beside = TRUE,
  names.arg = c("1st", "2nd", "3rd", "Crew"),
  col = c("green", "red"),
  legend = c("Survived", "Died"),
  main = "Survival by Class",
  ylab = "Number of Passengers"
)

#Heatmap: Class vs Sex vs Survival
class_survival <- aggregate(Freq ~ Class + Survived, data=titanic_df, sum)

barplot(
  height = matrix(class_survival$Freq, nrow=2, byrow=TRUE),
  beside = TRUE,
  names.arg = c("1st", "2nd", "3rd", "Crew"),
  col = c("green", "red"),
  legend = c("Survived", "Died"),
  main = "Survival by Class",
  ylab = "Number of Passengers"
)









