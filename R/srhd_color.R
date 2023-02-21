#' @title 
#' SRHD colors 
#' 
#' @description 
#' "srhd_color" names the hex colors to be used.
#' 
#' @details
#' This color palette use Spokane Regional Health District colors from 2021.
#' These colors can be used to color charts.
#' This is also a helper file to build "srhd_palette", which in turn buildsthe 
#' "palette_gen" and "palette_gen_c" functions.
#' And those in turn are helper files to build "scale_*_srhd" functions for 
#' use in ggplot2. 
#' 
#' Method and code borrowed from here.
#' https://meghan.rbind.io/blog/2022-10-11-creating-custom-color-palettes-with-ggplot2/
#' 
#' Package creation instructions were from here.
#' https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/

#' #Example:
#' #use palette in a chart
#' str(iris)
#' 

#' #no color defined
#' iris %>% 
#'  count(Species) %>% 
#'  ggplot(aes(x = Species, y = n))+
#'  geom_bar(stat = "identity")

#' #the new srhd_color function is used to define a color
#' iris %>% 
#'  count(Species) %>% 
#'  ggplot(aes(x = Species, y = n))+
#'  geom_bar(stat = "identity", fill = srhd_color("lt green"))
#'  
#' #if you want to specify the colors use scale_*_manual
#' iris %>% 
#'  count(Species) %>% 
#'  ggplot(aes(x = Species, y = n, fill = Species)) +
#'  geom_bar(stat = "identity") +
#'  scale_fill_manual(values= unname(c(srhd_color(
#'  "teal", "orange", "dk blue"))))
#' 

srhd_color <-function(...) {
  srhd_color <- c(
    `med blue`    = "#4767AB", 
    `lt green`    = "#99C221", 
    `red`         = "#DC4405",
    `orange`      = "#FF6C2F", 
    `med green`   = "#97A926", 
    `dk blue`     = "#3C4981", 
    `teal`        = "#008780", 
    `lt teal`     = "#009E77")
  cols <- c(...)
  
  if (is.null(cols))
    return (srhd_color)
  
  srhd_color[cols]
}