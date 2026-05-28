packages <- c(
  "dplyr",
  "tidyr",
  "purrr",
  "stringr",
  "tibble",
  "ggplot2",
  "MASS",
  "writexl",
  "scales",
  "patchwork",
  "apollo",
  "readxl",
  "psych",
  "car",
  "lavaan",
  "semPlot",
  "gridExtra",
  "semTools",
  "mvnfast",
  "parameters",
  "MVN",
  "plspm",
  "gmnl",
  "xtable",
  "mlogit",
  "rmarkdown"
)

missing_packages <- packages[!packages %in% rownames(installed.packages())]

if (length(missing_packages) > 0) {
  install.packages(missing_packages, dependencies = TRUE)
}
