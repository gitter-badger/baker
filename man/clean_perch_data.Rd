% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/clean-perch-data.R
\name{clean_perch_data}
\alias{clean_perch_data}
\title{Clean PERCH data}
\usage{
clean_perch_data(clean_options)
}
\arguments{
\item{clean_options}{The list of options for cleaning PERCH data.
Its elements are defined as follows:
\itemize{
\item{\code{raw_meas_dir}}{: The file path to the raw data;}
\item{\code{case_def}}{: variable name in raw data for case definition;}
\item{\code{case_def_val}}{: The value for case definition;}
\item{\code{ctrl_def}}{: variable name in raw data for control definition;}
\item{\code{ctrl_def_val}}{: The value for control definition;}
\item{\code{X_strat}}{: A vector of variable names for stratifying the data
to perform SEPARATE analyses;}
\item{\code{X_strat_val}}{: A list of values for \code{X_strat}. The output
data will only correspond to those with \code{identical(X_strat,X_strat_val)==TRUE}.
To perform analysis on a single site, say \code{"02GAM"}, use \code{X_strat="newSITE"} and
\code{X_strat_val=list("02GAM")};}
\item{\code{BrS_objects}}{: a list of BrS objects built by \code{\link{make_meas_object}};}
\item{\code{SS_objects}}{: a list of SS objects built by \code{\link{make_meas_object}};}
\item{\code{X_extra}}{: A vector of covariate names for regression
or visualization;}
\item{\code{patho_taxo_dir}}{: The file path to the pathogen category or taxonomy
information (.csv). The information should be as complete as possible to
display all pathogens considered in an actual study;}
\item{\code{allow_missing}}{: \code{TRUE} for using an observation that has
either BrS missing, or SS missing. Set it to \code{TRUE} if we want to use
the SS information from some cases who missed BrS measurements.
In other words, all the subjects' data will be used if \code{allow_missing} is
set to \code{TRUE}.}
}}
}
\value{
A List: \code{list(Mobs,Y,X)}
\itemize{
\item \code{Mobs} A list of bronze- (\code{MBS}), silver- (\code{MSS}),
and gold-standard (\code{MGS}, if available) measurements.
It is produced by \code{\link{extract_data_raw}}. Please see the description
of the returned value therein.
\item \code{Y} 1 for case; 0 for control;
\item \code{X} Data frame of covariates for cases and controls. The covariate
names are specified in \code{X_extra};
}
This function does not re-order pathogens that only have silver-standard data.
}
\description{
\code{clean_perch_data} transforms a raw data table (row for subject, column
for variable - usually \code{\{pathogen name\}_\{specimen\}_\{test\}} and other covariate
names) into a list. It is specific for PERCH data format.
}
\seealso{
\link{make_meas_object} for wrapping information about a particular
type of measurement; \link{extract_data_raw} for reading raw data table
and organizing them into \code{data_nplcm} format. Also see \link{clean_combine_subsites}
for combining subsites and \link[lubridate]{parse_date_time} for parsing date.
}

