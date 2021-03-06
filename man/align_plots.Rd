% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plot_grid.R
\name{align_plots}
\alias{align_plots}
\title{Align multiple plots vertically and/or horizontally}
\usage{
align_plots(..., plotlist = NULL, align = c("none", "h", "v", "hv"))
}
\arguments{
\item{...}{List of plots to be aligned.}

\item{plotlist}{(optional) List of plots to display. Alternatively, the plots can be provided
individually as the first n arguments of the function plot_grid (see examples).}

\item{align}{(optional) Specifies whether graphs in the grid should be horizontally ("h") or
vertically ("v") aligned. Options are "none" (default), "hv" (align in both directions), "h", and "v".}
}
\description{
Align multiple plots for plotting manually. Can be used to graph two separate y axis, but still doesn't work if second y axis needs to be shown.
}
\examples{
p1 <- qplot(1:10, rpois(10, lambda=15), geom="point")
p2 <- qplot(1:10, (1:10)^2, geom="line") + theme_nothing()
# manually align and plot on top of each other
aligned_plots <- align_plots(p1, p2, align="hv")
ggdraw() + draw_grob(aligned_plots[[1]]) + draw_grob(aligned_plots[[2]])
}

