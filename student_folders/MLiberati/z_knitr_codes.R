# Spin/Knit multiple files

## Preamble
library(knitr)
library(ezknitr)

# Activity 2a: R-Markdown
ezknit("student_folders/MLiberati/activity2a_Rmarkdown.Rmd",
                        out_dir = "student_folders/MLiberati/reports",
                        fig_dir = "figures",
                        keep_md = F)

# Activity 2b: R-Oxygen
ezspin("student_folders/MLiberati/activity2b_Roxygen.R",
                        out_dir = "student_folders/MLiberati/reports",
                        fig_dir = "figures",
                        keep_md = F)
