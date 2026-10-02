# Stroop effect reproducibility assignment

A small, fully reproducible analysis of a classroom Stroop-task dataset,
used to teach an open and reproducible data analysis workflow. Students in
an introductory psychology course named colors in congruent trials (e.g.,
the word "red" printed in red) and incongruent trials (e.g., "red" printed
in green); the time to name all words in each block was self-reported in
seconds. The analysis tests whether there is a Stroop effect.

This repository is a Quarto port of
[Lakens/reproducibility_assignment](https://github.com/Lakens/reproducibility_assignment),
and is organized to follow the best practices described in
[Lakens, Mesquida & DeBruine, "Best Practices for Machine Readable Data and
Code Sharing in Psychology"](https://github.com/scienceverse/ms_FAIR_data_and_code).

## Contents

| Folder | Contents |
|---|---|
| `data/` | `stroop_data.csv`, the cleaned, comma-separated analysis dataset; `raw/stroop_raw.csv`, the original space-delimited download |
| `code/` | `clean_data.R`, which converts the raw data into `data/stroop_data.csv`; `analysis.qmd`, the Quarto analysis that reads `data/stroop_data.csv` and reports the results |
| `output/` | `analysis.html`, the rendered analysis |
| `documentation/` | `stroop_data_codebook.csv`, describing every column in `data/stroop_data.csv` |

`dataset_description.json`, at the repository root, is a machine-readable
summary of the dataset (Schema.org `Dataset`), independent of this README.

## Reproducing the analysis

1. Open this repository in R (e.g., via its `.Rproj` file or by setting it
   as the working directory).
2. `Rscript code/clean_data.R` regenerates `data/stroop_data.csv` from
   `data/raw/stroop_raw.csv` (already included, so this step is optional
   unless you want to re-run the conversion yourself).
3. Render `code/analysis.qmd` with Quarto (`quarto render code/analysis.qmd`)
   to reproduce `output/analysis.html`.

Required R packages: `ggplot2`, `reshape2`.

## License

MIT License — see `LICENSE`.
