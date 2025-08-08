# Data Analysis Portfolio (R Projects)

This repository contains four R-based data analysis projects, each demonstrating different statistical and visualization techniques using R and RMarkdown. These projects can be knitted into HTML, PDF, or Word reports.

---

##  Projects Overview

### 1. AirPassengers Time Series Forecast
**Dataset:** `AirPassengers` (Monthly Airline Passenger Numbers 1949–1960)  
**Key Skills:**  
- Time series decomposition (trend, seasonality, residuals)  
- Forecasting using ARIMA models  
- Visualization with `forecast` and `ggplot2`  

**Highlights:**  
- Identified strong yearly seasonality in air travel  
- Generated 12-month forecasts with confidence intervals  

---

### 2. Mtcars Correlation Analysis
**Dataset:** `mtcars` (Motor Trend US magazine car road tests)  
**Key Skills:**  
- Correlation matrix analysis  
- Visualization using `corrplot`  
- Exploratory plots (`ggplot2`, scatter plots, boxplots)  

**Highlights:**  
- Explored relationships between horsepower, weight, mpg, and other variables  
- Found strong negative correlation between weight and fuel efficiency  

---

### 3. Titanic Data Analysis
**Dataset:** `titanic.csv` (Passenger survival data from the Titanic disaster)  
**Key Skills:**  
- Data cleaning and factor conversion  
- Grouped summaries (`dplyr`)  
- Visualization of survival rates by gender, class, and age group (`ggplot2`)  

**Highlights:**  
- Survival rate higher for women and children  
- 1st class passengers had better survival rates than 3rd class  

---

### 4. PlantGrowth Experimental Design Analysis
**Dataset:** `PlantGrowth` (Results from a controlled plant growth experiment)  
**Key Skills:**  
- ANOVA for group mean comparison  
- Post-hoc testing (Tukey HSD)  
- Visualization of group differences (`ggplot2`, bar charts with value labels)  

**Highlights:**  
- No statistically significant difference between certain treatment groups  
- Clear visualization of mean weights with error bars and labels  

---

## 🛠️ Setup Instructions
1. Install required R packages before knitting:
```r
install.packages(c("ggplot2", "dplyr", "forecast", "corrplot"))
