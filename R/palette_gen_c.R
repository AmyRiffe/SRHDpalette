#' @title 
#' Generate SRHD colrs for use in a chart.
#' 
##' @description 
#' "palette_gen_c" identifies the number of colors to be used for 
#' continuous variables
#' 
#' @details
#' Thisis a helper files to build "scale_*_srhd_c" functions for 
#' use in ggplot2. 
#' 

#' 
#' Method and code borrowed from here.
#' https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/
#' 
#' Package creation instructions were from here.
#' https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

#'
palette_gen_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- srhd_palette(palette)
  
  pal <- if (direction >= 0) pal else rev(pal)
  
  colorRampPalette(pal, ...)
  
}
