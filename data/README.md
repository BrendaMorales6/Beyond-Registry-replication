# Data

The empirical workbook used by the analysis is not included in this initial repository version because it contains firm-level survey and discrete choice experiment data. The database is expected to be released publicly in the future after anonymisation, permissions, documentation, and licensing conditions have been finalised.

To reproduce the analysis, place the restricted workbook in this folder using the following path:

```text
data/Analisis.xlsx
```

The current analysis expects, at minimum, these worksheets:

- `RHC`: measurement model data for firms enrolled in the Spanish Carbon Footprint Registry.
- `Spain`: measurement model data for the comparison sample of Spanish firms.
- `DCE_RHC_II`: discrete choice experiment data for Registry firms.
- `DCE_Spain_II`: discrete choice experiment data for the comparison sample.
- `Todo_II`: pooled discrete choice experiment data used in the latent class models.

When the data are released publicly, update this folder with one of the following:

- the final anonymised workbook, if it is appropriate to store it directly in GitHub; or
- a small metadata file with the permanent archive link and DOI, if the data are deposited in Zenodo, OSF, Dataverse, institutional repository, or a similar archive.

Recommended additions at release:

- final data citation;
- data licence, separate from the code licence;
- version/date of the released workbook;
- short codebook or variable dictionary;
- anonymisation statement;
- any reuse restrictions required by survey consent or institutional policy.
