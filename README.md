# Beyond the Registry: Corporate Motivations and Preferences for Forest Carbon Offsets in Spain

This repository contains the R code required to reproduce the empirical analysis for the working paper:

> Morales, B. and Ovando, P. (2026). *Beyond the Registry: Corporate Motivations and Preferences for Forest Carbon Offsets in Spain*.

The paper studies corporate engagement with forest carbon offsets in Spain, comparing firms enrolled in the Spanish Carbon Footprint Registry with a broader sample of Spanish firms. The empirical workflow combines Theory of Planned Behaviour constructs, PLS-SEM measurement and structural models, discrete choice models, mixed logit models, willingness-to-pay calculations, and latent class models.

## Repository Structure

```text
.
├── analysis/
│   └── Beyond_RCode_SEM_MXL_WTP_LC.Rmd
├── data/
│   └── README.md
├── output/
│   └── .gitkeep
├── .gitignore
├── LICENSE
├── README.md
├── REFERENCES.md
└── requirements.R
```

## Requirements

The analysis was prepared for R and RStudio. The current setup was checked with R 4.5.3, but the code should also be portable to recent R 4.x releases if all package dependencies are installed.

Install the required R packages with:

```r
source("requirements.R")
```

Main package dependencies include `dplyr`, `readxl`, `writexl`, `ggplot2`, `psych`, `plspm`, `lavaan`, `semTools`, `mlogit`, `gmnl`, `apollo`, `patchwork`, `xtable`, and `rmarkdown`.

## Data

The individual-level survey and discrete choice experiment workbook is not included in this first public-ready version because it may contain confidential or restricted firm-level information. The database is expected to be released in the future once anonymisation, permissions, documentation, and licensing conditions have been finalised.

To reproduce the analysis, place the local workbook at:

```text
data/Analisis.xlsx
```

The script expects the following worksheets:

- `RHC`: PLS-SEM measurement data for firms in the Spanish Carbon Footprint Registry.
- `Spain`: PLS-SEM measurement data for the comparison sample of Spanish firms.
- `DCE_RHC_II`: discrete choice experiment data for Registry firms.
- `DCE_Spain_II`: discrete choice experiment data for the comparison sample.
- `Todo_II`: pooled discrete choice experiment data for latent class models.

Until the public release is available, do not commit `data/Analisis.xlsx`. When the database is released, add the file or a permanent repository link, include a data citation, and specify the data licence separately from the code licence.

## Reproducing the Analysis

1. Clone or download the repository.
2. Open the project folder in RStudio or set the working directory to the repository root.
3. Place the restricted workbook at `data/Analisis.xlsx`.
4. Install dependencies:

```r
source("requirements.R")
```

5. Render or run the R Markdown file:

```r
rmarkdown::render("analysis/Beyond_RCode_SEM_MXL_WTP_LC.Rmd")
```

Some models are computationally intensive, especially the bootstrap PLS-SEM steps, mixed logit models, and Apollo latent class models. Execution time will depend on the machine and installed numerical libraries.

## Expected Outputs

Running the R Markdown file produces console summaries, model tables, intermediate latent-score workbooks, Apollo model outputs, and publication-oriented figures. Generated outputs are written either to the repository root or to `output/`, depending on the relevant code block.

The `.gitignore` is configured to exclude generated figures, model objects, output text files, R session files, and restricted data from version control.

## Reproducibility Notes

The GitHub-ready version removes hard-coded local paths and expects the data workbook at `data/Analisis.xlsx`. It also makes the initial measurement-model datasets explicit rather than relying on a pre-loaded `.RData` file.

The original working folder contains literature PDFs, draft files, R session files, local virtual environments, generated figures, generated Apollo outputs, and restricted data files. These are intentionally excluded from the clean repository.

## Methodological References

The methodological bibliography used to justify the code decisions is listed in `REFERENCES.md` in APA 6th style. It covers the mixed logit simulation loop and Halton-draw stability checks, McFadden pseudo-R2, latent class model selection, PLS-SEM measurement model criteria, and Krinsky-Robb confidence intervals for WTP.

## Data Availability

Data are planned for future public release. The repository currently documents the expected file location and worksheet structure so that the analysis can be reproduced locally by authorised users.

When the database is published, cite it using the final archive DOI or repository record. A suggested placeholder citation is:

> Morales, B. and Ovando, P. (forthcoming). Replication data for *Beyond the Registry: Corporate Motivations and Preferences for Forest Carbon Offsets in Spain*.

## License

The code is released under the MIT License. This licence applies to the software/code only. The future database should be released under a separate data licence, such as CC BY 4.0 if reuse with attribution is intended, or CC BY-NC 4.0 if non-commercial reuse is required.
