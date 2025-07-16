library(quarto)

quarto::quarto_render(
    input = "flower-report.qmd",
    output_file = "rose.html",
    execute_params = list(sp ="rose"))

