#' @title 
#' Generate SRHD colors palette function for use in ggplot2.
#' 
#' @description 
#' "scale_fill_srhd" builds a function for use in ggplot2
#' that uses the SRHD color palette
#' 
#' @details
#' This builds "scale_fill_srhd" functions for 
#' use in ggplot2 using the SRHD color palette.
#' fill colors the inside
#' 

#' 
#' Method and code borrowed from here.
#' https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/
#' 
#' Package creation instructions were from here.
#' https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/
#'

scale_fill_srhd <- function(palette = "main", direction = 1, ...) {
  
  ggplot2::discrete_scale(
    "fill", "srhd",
    palette_gen(palette, direction),
    ...
  )
}

