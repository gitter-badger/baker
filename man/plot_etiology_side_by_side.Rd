% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/plot-etiology-side-by-side.R
\name{plot_etiology_side_by_side}
\alias{plot_etiology_side_by_side}
\title{compare the posterior distribution of population etiologies side-by-side}
\usage{
plot_etiology_side_by_side(DIR_list, DIR_pathogen_displayorder_lookup,
  dodge_val = 0.5)
}
\arguments{
\item{DIR_list}{The list of directory paths, each storing a model output.}

\item{DIR_pathogen_displayorder_lookup}{The directory path to the .csv file
that stores the display order of pathogens in the combined music sheet plot.}

\item{dodge_val}{default is 0.5; for width and position of boxplots.}
}
\value{
A figure that compares posterior etiology distribution stored in
two or more folders
}
\description{
compare the posterior distribution of population etiologies side-by-side
}
\details{
\code{plot_etiology_side_by_side} produces what we call "music-sheet plot"
to compare estimates of population distribution of latent health status
(a.k.a population etiology, or population etiology pie). It reads in two or more
folders where Bayesian inference results are combined. We implemented a check to make sure
that pathogens from one analysis are subset of another. NB: current implementation
does not check whether the results are from the same stratum, e.g., same site.
We recommend putting information in the the folder names under comparisons.
}

