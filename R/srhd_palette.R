#' @title 
#' SRHD color palette 
#' 
#' @description 
#' "srhd_palette" builds a list with one or more color palettes 
#' 
#' @details
#' 
#' These colors can be used to color charts.
#' This is a helper file to build "palette_gen"and "palette_gen_c" functions.
#' And those in turn are helper files to build "scale_*_srhd" functions for 
#' use in ggplot2. 
#' 
#' call the color palette using the palette function
#' srhd_palette("main")
#'
#' use the show_col function from the scales package to show the actual color 
#' and not just hex codes
#' scales::show_col(srhd_palette("main"), cex_label=2)
#' 
#' Method and code borrowed from here.
#' https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/
#' 
#' Package creation instructions were from here.
#' https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

#' 
#make a  palette from the colors function
srhd_palette <- function(palette = "main", ...) {
  srhd_palettes <-list (
    `main` = srhd_color("med blue", "lt green", "red", "orange", "med green", 
                        "dk blue", "teal", "lt teal"), 
    `srhd3color` = srhd_color("med blue", "lt green", "red")
  )
  srhd_palettes[[palette]]
}

#call the color palette using the palette function
#srhd_palette("main")

#use the show_col function from the scales package to show the actual color 
#and not just hex codes
#scales::show_col(srhd_palette("main"), cex_label=2)
