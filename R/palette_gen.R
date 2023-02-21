#' @title 
#' Generate SRHD colrs for use in a chart.
#' 
#' @description 
#' "palette_gen" identifies the number of colors to be used for 
#' discrete variables
#' 
#' @details
#' Thisis a helper files to build "scale_*_srhd" functions for 
#' use in ggplot2. 
#' 

#' 
#' Method and code borrowed from here.
#' https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/
#' 
#' Package creation instructions were from here.
#' https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/
#' 
#' 

#' 
#create own scale_color and scale_fill functions
palette_gen <- function(palette = "main", direction = 1) {
  
  function(n) #n is the number of colors that would be needed for a plot
  {
    
    if (n > length(srhd_palette(palette)))
      warning("Not enough colors in this palette!")
    
    else {
      
      all_colors <- srhd_palette(palette)
      
      all_colors <- unname(unlist(all_colors))
      
      all_colors <- if (direction >= 0) all_colors else rev(all_colors)
      
      color_list <- all_colors[1:n]
      
    }
  }
}
