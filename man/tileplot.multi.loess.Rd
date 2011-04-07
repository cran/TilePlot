\name{tileplot.multi.loess}
\alias{tileplot.multi.loess}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{TilePlot 2-array Microarray Processing Function with loess normalization}
\description{
This function is for processing a two functional gene tiling DNA microarrays of the same design for the purposes of comparison. As input it takes array data, and its output is the hybridization plot for each gene on the array, the mean probe intensity, the median probe intensity, the bright probe fraction, the bright segment length dependent score, the mean bright probe intensity, and the median bright probe intensity. The data for array2data is normalized to the array1data using loess - ie an assumption is made that all spots on both arrays should be approximately the same, then all array2data is adjusted to fit that assumption - the modified array2data is given as output in the graphdirectory. The output is both graphical (as a set of tex and encapsulated-postscript format files that can be assembled using latex) and a tab-delimited text file with rows corresponding to genes and columns corresponding to output parameters.}
\usage{
tileplot.multi.loess(genesonchip, array1data, array2data, annotationslist, cutoff, outputfile, graphdirectory, outputtable, array1name, array2name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{genesonchip}{Path to a text file containing a list of all gene identifiers (I try to use IMG/M identifiers) on the microarray.}
  \item{array1data}{Path to a tab-delimited text file for the first array containing all probe identifiers in the first (left-hand) column and probe intensities in the second (right-hand) column. File must be ordered in a specific way (see below).}
  \item{array2data}{Path to a tab-delimited text file for the second array containing all probe identifiers in the first (left-hand) column and probe intensities in the second (right-hand) column. File must be ordered in a specific way (see below).}
  \item{annotationslist}{Path to a text file containing a list of all gene annotations. Each annotation must contain the gene identifier mentioned in \code{genesonchip}}
  \item{cutoff}{An integer cutoff value for distinguishing dark probes from bright probes based on probe intensity value.}
  \item{outputfile}{Path leading to desired output filename (a .tex file for input into latex).}
  \item{graphdirectory}{A directory for output of plots in encapsulated postscript format.}
  \item{outputtable}{Path leading to desired output filename (a .tdt file for further analysis of statistics for each individual gene).}
  \item{array1name}{Identifier for Array 1 (Default is "Array 1").}
  \item{array2name}{Identifier for Array 2 (Default is "Array 2").}

}
\details{
All probe names must have the following format: geneidentifier-probenumber. \code{array1data} must be sorted so that the probes for each gene are in the correct order (ie from probe 1 to the final probe). This is easily achieved with the unix sort command.
}
\references{http://www.stanford.edu/~ianpgm/tileplot}
\author{Ian Marshall}
\examples{
#This example code will deposit tex, tdt, and eps output into your R session directory
tileplot.multi.loess(genesonchip=system.file("allgenesonchip.ID", package="TilePlot"),  array1data=system.file("array1", package="TilePlot"), array2data=system.file("array2", package="TilePlot"),  annotationslist=system.file("all_annotations", package="TilePlot"),  cutoff=150,  outputfile=file.path(tempdir(), "example_output.tex"),  graphdirectory=tempdir(), outputtable=file.path(tempdir(), "example_output.tdt"))
}
