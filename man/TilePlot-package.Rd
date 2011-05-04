\name{TilePlot-package}
\alias{TilePlot-package}
\alias{TilePlot}
\alias{tileplot}
\docType{package}
\title{
Package for analysis of Functional Gene Tiling DNA Microarrays}
\description{
Description: This package is intended for processing the output from functional gene tiling DNA microarray experiments. It produces hybridization pattern plots for each gene on the array, and statistics for each gene including mean probe intensity, median probe intensity, bright probe fraction, bright segment length dependent score, bright probe mean intensity, and bright probe median intensity. Output is generated in order of bright segment length dependent score in both a latex/eps format and tab-delimited text file. The package works in two modes: single array, and comparison of two arrays. Array comparison includes array comparison statistics: median of logarithm of one array probe divided by its counterpart on the other array, median absolute deviation of that value, and the binomial test to see whether the genes are equally abundant in both arrays.}
\details{
\tabular{ll}{
Package: \tab TilePlot\cr
Type: \tab Package\cr
Version: \tab 1.2.1\cr
Date: \tab 2011-05-04\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}
\author{
Ian Marshall <ianpgm@stanford.edu>
}
\references{
http://www.stanford.edu/~ianpgm/tileplot/
}