library(quarto)
library(tidyverse)

# Get unique species
species <- c("rose", "shoeblack plant", "hibiscus")

reports <- 
  tibble(
    input = "flower-report.qmd",
    output_file = stringr::str_glue("{species}.html"),
    execute_params = purrr::map(species, ~list(sp = .))
  )

purrr::pwalk(reports, quarto_render)

