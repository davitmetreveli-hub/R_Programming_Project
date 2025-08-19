# 📊 R Data Analysis Projects — Time Series, EDA, Correlation, ANOVA

[![Releases](https://img.shields.io/badge/Releases-v1.0-blue)](https://github.com/davitmetreveli-hub/R_Programming_Project/releases)  
https://github.com/davitmetreveli-hub/R_Programming_Project/releases

![R logo](https://www.r-project.org/Rlogo.png)

About this repository
- Four R projects that demonstrate common data-analysis workflows.
- Focus areas: time series forecasting, correlation analysis, exploratory data analysis (EDA), and ANOVA-based experimental design.
- Each project includes data, scripts, figures, and an R Markdown report.
- Topics: anova, correlation, dataanalysis, datavisualization, exploratory-data-analysis, markdown, portfolio, r, rprogramming, time-series

Quick links
- Releases and downloadable assets: https://github.com/davitmetreveli-hub/R_Programming_Project/releases
- Use the releases page to download the packaged project files and run the contained R scripts.

Why this repo
- Suitable for learners who want applied examples in R.
- Good for interview prep and portfolio use.
- Uses base R and common packages: tidyverse, forecast, ggplot2, rstatix, broom, patchwork, and readr.

Project layout
- /time_series_forecasting
  - Data: monthly_sales.csv
  - Scripts: ts_forecast.R, ts_report.Rmd
  - Output: forecast_plots.png, forecast_table.csv
- /correlation_analysis
  - Data: health_metrics.csv
  - Scripts: corr_analysis.R, corr_report.Rmd
  - Output: corr_heatmap.png, corr_results.csv
- /exploratory_data_analysis
  - Data: customer_data.csv
  - Scripts: eda_pipeline.R, eda_report.Rmd
  - Output: eda_plots/, summary_tables.csv
- /anova_experiment
  - Data: experiment_results.csv
  - Scripts: anova_pipeline.R, anova_report.Rmd
  - Output: anova_plots.png, anova_summary.csv

Highlights of each project

1) Time series forecasting 📈
- Goal: model monthly sales and produce short-term forecasts with confidence intervals.
- Methods: time series decomposition, ARIMA, ETS, cross-validation.
- Deliverables: forecast plot, error metrics (MAE, RMSE), an R Markdown report that documents model selection and diagnostics.
- Key files: `ts_forecast.R`, `ts_report.Rmd`.
- Example workflow:
  - Load data with `read_csv`.
  - Convert to ts object with `ts()`.
  - Fit ARIMA via `forecast::auto.arima`.
  - Produce forecast with `forecast()` and plot via `ggplot2`.

2) Correlation analysis 🔗
- Goal: explore pairwise relationships and partial correlations in a health dataset.
- Methods: Pearson/Spearman correlations, correlogram, hypothesis tests, multiple testing correction.
- Deliverables: correlation table with p-values and adjusted p-values, heatmap, R Markdown report.
- Key files: `corr_analysis.R`, `corr_report.Rmd`.
- Jargon used: correlation matrix, p-value, FDR, Spearman rank, partial correlation.

3) Exploratory data analysis (EDA) 🔍
- Goal: inspect distributions, missing values, and feature relationships in customer data.
- Methods: summary statistics, boxplots, histograms, density plots, missingness map, group comparisons.
- Deliverables: EDA report, cleaned dataset, visualization gallery.
- Key files: `eda_pipeline.R`, `eda_report.Rmd`.
- Focus: reproducible analysis with tidy pipelines and clear plots.

4) ANOVA and experimental design 🧪
- Goal: analyze a controlled experiment with multiple treatments and blocks.
- Methods: one-way and two-way ANOVA, post-hoc tests (Tukey HSD), assumption checks (Levene, Shapiro-Wilk), effect-size calculation.
- Deliverables: ANOVA table, pairwise comparisons, residual diagnostics, R Markdown report.
- Key files: `anova_pipeline.R`, `anova_report.Rmd`.
- Jargon used: factor levels, interaction term, homoscedasticity, Type I error.

Setup and dependencies
- R >= 4.0
- Recommended packages:
  - tidyverse
  - forecast
  - ggplot2
  - rstatix
  - broom
  - patchwork
  - readr
  - corrplot
  - knitr
  - rmarkdown
- Install recommended packages:
```
install.packages(c("tidyverse", "forecast", "ggplot2", "rstatix", "broom", 
                   "patchwork", "readr", "corrplot", "knitr", "rmarkdown"))
```

How to run the projects (download and execute)
- Download the release asset from the releases page and run the scripts. For example:
  1. Visit the Releases page and download the latest archive. The page holds packaged project files.
     - Link: https://github.com/davitmetreveli-hub/R_Programming_Project/releases
  2. Extract the archive to a local folder.
  3. Open R or RStudio and set the working directory to the project folder. Example:
```
setwd("path/to/R_Programming_Project/time_series_forecasting")
```
  4. Run the main script for a project:
```
source("ts_forecast.R")
```
  5. Render a report:
```
rmarkdown::render("ts_report.Rmd")
```
- The release archive contains a main runner `run_all.R`. Execute it to run all projects in sequence:
```
Rscript run_all.R
```
- The release asset includes sample data and prebuilt outputs. Download and execute the included scripts to reproduce results.

Releases
- The repository provides packaged releases. Download the release archive and execute the included scripts to reproduce analysis and build reports.
- Visit: [Releases](https://github.com/davitmetreveli-hub/R_Programming_Project/releases)
- Typical release contents:
  - R_Programming_Project_v1.0.zip
  - run_all.R
  - README.md
  - per-project folders with scripts, data, and reports

Data sources and synthetic data
- Each project includes either an open dataset or a synthetic dataset generated for demonstration.
- Time series: synthetic monthly sales with seasonal pattern and trend.
- Correlation: simulated health metrics with known correlations for testing.
- EDA: mix of real-style customer fields and synthetic entries for privacy.
- ANOVA: balanced factorial data designed to show treatment differences.

Reproducibility and reports
- Every project uses an R Markdown file. Render those files to get:
  - A narrative report that covers methods, outputs, and diagnostics.
  - Embedded plots and tables.
- Use `rmarkdown::render("project_report.Rmd")` to build the HTML or PDF report.

Visualization gallery
- The repo stores key images in each project folder. Expect:
  - Forecast plots with fan charts.
  - Correlation heatmaps.
  - Boxplots for group comparisons.
  - Residual diagnostic plots.
- Images use ggplot2 themes and color palettes that work in colorblind-safe palettes.

Testing and validation
- Each project contains unit checks and sanity checks:
  - Shape and type checks on loaded data.
  - Residual checks for model fits.
  - P-value corrections for multiple tests.
- Scripts return exit codes and log files for automation.

Example commands for CI or automation
- Run an individual project:
```
Rscript time_series_forecasting/ts_forecast.R
```
- Run all projects:
```
Rscript run_all.R
```
- Build a single report:
```
Rscript -e "rmarkdown::render('exploratory_data_analysis/eda_report.Rmd')"
```

Contributing
- Fork the repo.
- Make a branch for your change.
- Add tests or example data if you add functionality.
- Create a pull request with a short description of changes and motivation.
- Keep commits small and focused.

License
- MIT License. You can reuse code with attribution.

Contact
- Repository owner: davitmetreveli-hub (GitHub)
- Use GitHub issues for feature requests or bug reports.

Badges and quick status
[![R-CMD-check](https://img.shields.io/badge/R-CMD--check-passing-brightgreen)](https://github.com/davitmetreveli-hub/R_Programming_Project)
[![Topics](https://img.shields.io/badge/topics-anova%2C-correlation%2C-dataanalysis-orange)](https://github.com/davitmetreveli-hub/R_Programming_Project)

Tags
- anova, correlation, dataanalysis, datavisualization, exploratory-data-analysis, markdown, portfolio, r, rprogramming, time-series

Files to inspect first
- run_all.R — orchestrator that runs all pipelines and builds reports.
- time_series_forecasting/ts_forecast.R — focused example of ARIMA workflow.
- correlation_analysis/corr_analysis.R — semiautomated correlation pipeline.
- exploratory_data_analysis/eda_pipeline.R — preprocessing and visualization.
- anova_experiment/anova_pipeline.R — full ANOVA workflow with tests.

Releases reminder
- Download the release archive and run the included scripts to reproduce the full analysis.
- Releases: https://github.com/davitmetreveli-hub/R_Programming_Project/releases

Sample workflow for a single project
1. Clone the repository or download the release.
2. Open the target project folder.
3. Install the packages listed above.
4. Run the script or render the report.
5. Inspect the outputs in the `output/` or project folder.

Common troubleshooting
- If a package fails to install, install system dependencies and try again.
- If a data file fails to load, check the working directory and file paths.
- If rendering fails, run the R script that prepares the data first, then render the R Markdown file.

Appendix: common R snippets used in the repo
- Read CSV with tidyverse:
```
library(readr)
df <- read_csv("data.csv")
```
- Convert to ts:
```
ts_data <- ts(df$value, start = c(2015, 1), frequency = 12)
```
- Fit ARIMA:
```
library(forecast)
model <- auto.arima(ts_data)
fc <- forecast(model, h = 12)
autoplot(fc)
```
- ANOVA and post-hoc:
```
library(rstatix)
res_aov <- anova_test(data = df, dv = outcome, between = treatment)
pwc <- df %>% tukey_hsd(outcome ~ treatment)
```

Images used
- R logo: https://www.r-project.org/Rlogo.png
- Plot examples use ggplot2 and save to PNG in each project folder.

End of README content.