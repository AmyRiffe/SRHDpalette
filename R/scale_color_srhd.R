#' @title 
#' Generate SRHD colors palette function for use in ggplot2.
#' 
#' @description 
#' "scale_color_srhd" builds a function for use in ggplot2
#' that uses the SRHD color palette
#' 
#' @details
#' This builds "scale_color_srhd" functions for 
#' use in ggplot2 using the SRHD color palette.
#' Color is the border or line.


scale_color_srhd <- function(palette = "main", direction = 1, ...) {
  
  ggplot2::discrete_scale(
    "color", "srhd",
    palette_gen(palette, direction),
    ...
  )
}
