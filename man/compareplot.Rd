\name{compareplot}
\alias{compareplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function for comparing two vectors and performing linear regression}
\description{
This function is used internally by tileplot.multi and tileplot.multi.loess to produce scatterplots with linear regression for all probes on the microarray or other whole-microarray vectors of parameters like gene median probe intensity etc.
}
\usage{
compareplot(arrayset1, arrayset2, array1label, array2label, title)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{arrayset1}{The first vector of microarry data}
  \item{arrayset2}{The second vector of micrarray data}
  \item{array1label}{The identifying label for array 1}
  \item{array2label}{The identifying label for array 2}
  \item{title}{The title to be printed for the plot}
}
\references{http://www.stanford.edu/~ianpgm/tileplot}
\author{Ian Marshall}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.