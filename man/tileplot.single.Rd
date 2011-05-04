\name{tileplot.single}
\alias{tileplot.single}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{TilePlot Single Microarray Processing Function}
\description{
This function is for processing a single functional gene tiling DNA microarray. As input it takes array data, and its output is the hybridization plot for each gene on the array, the mean probe intensity, the median probe intensity, the bright probe fraction, the bright segment length dependent score, the mean bright probe intensity, and the median bright probe intensity. The output is both graphical (as a set of tex and encapsulated-postscript format files that can be assembled using latex) and a tab-delimited text file with rows corresponding to genes and columns corresponding to output parameters.
}
\usage{
tileplot.single(genesonchip, array1data, annotationslist, cutoff, cutoff_multiplier = 3, outputfile, graphdirectory, outputtable, array1name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{genesonchip}{Path to a text file containing a list of all gene identifiers (I try to use IMG/M identifiers) on the microarray.}
  \item{array1data}{Path to a tab-delimited text file containing all probe identifiers in the first (left-hand) column and probe intensities in the second (right-hand) column. File must be ordered in a specific way (see below).}
  \item{annotationslist}{Path to a text file containing a list of all gene annotations. Each annotation must contain the gene identifier mentioned in \code{genesonchip}}
  \item{cutoff}{An integer cutoff value for distinguishing dark probes from bright probes based on probe intensity value. This is optional - the default value is three times the median value for all probes on the array.}
  \item{cutoff_multiplier}{Alternatively the cutoff can be expressed as a multiple of the median value for all probes on the array. The default is 3, but in case you wish to trade off specificity for sensitivity (or vice versa) in complex samples then you can set the multiplier lower (or higher) using this parameter.}
\item{outputfile}{Path leading to desired output filename (a .tex file for input into latex).}
  \item{graphdirectory}{A directory for output of plots in encapsulated postscript format.}
  \item{outputtable}{Path leading to desired output filename (a .tdt file for further analysis of statistics for each individual gene).}
  \item{array1name}{Identifier for Array 1 (Default is "Array 1").}
}
\details{
All probe names must have the following format: geneidentifier-probenumber. \code{array1data} must be sorted so that the probes for each gene are in the correct order (ie from probe 1 to the final probe). This is easily achieved with the unix sort command (sort -n -k2 -t- filename > sorted\_filename). The output file should be processed with LaTeX (http://www.latex-project.org/) to obtain a PDF.
}
\references{http://www.stanford.edu/~ianpgm/tileplot}
\author{Ian Marshall}
\examples{
#This example code will deposit tex, tdt, and eps output into your R session directory
tileplot.single(genesonchip=system.file("allgenesonchip.ID", package="TilePlot"),  array1data=system.file("array1", package="TilePlot"),   annotationslist=system.file("all_annotations", package="TilePlot"), outputfile=file.path(tempdir(), "example_output.tex"),  graphdirectory=tempdir(), outputtable=file.path(tempdir(), "example_output.tdt"))
}