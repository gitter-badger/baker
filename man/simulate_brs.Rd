% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/simulate-nplcm.R
\name{simulate_brs}
\alias{simulate_brs}
\title{Simulate Bronze-Standard Data}
\usage{
simulate_brs(set_parameter, latent_samples)
}
\arguments{
\item{set_parameter}{parameters for BrS measurements}

\item{latent_samples}{sampled latent status for all the subjects, for use in simulate
BrS measurements.}
}
\value{
a data frame with first column being case-control status (case at top) and
columns of bronze-standard measurements
}
\description{
simulate BrS measurements:
}

