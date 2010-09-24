\name{tileplot.single}
\alias{tileplot.single}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{TilePlot Single Microarray Processing Function}
\description{
This function is for processing a single functional gene tiling DNA microarray. As input it takes array data, and its output is the hybridization plot for each gene on the array, the mean probe intensity, the median probe intensity, the bright probe fraction, the bright segment length dependent score, the mean bright probe intensity, and the median bright probe intensity. The output is both graphical (as a set of tex and encapsulated-postscript format files that can be assembled using latex) and a tab-delimited text file with rows corresponding to genes and columns corresponding to output parameters.
}
\usage{
tileplot.single(genesonchip, array1data, annotationslist, allsequences, cutoff, outputfile, graphdirectory, outputtable)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{genesonchip}{Path to a text file containing a list of all gene identifiers (I try to use IMG/M identifiers) on the microarray.}
  \item{array1data}{Path to a tab-delimited text file containing all probe identifiers in the first (left-hand) column and probe intensities in the second (right-hand) column. File must be ordered in a specific way (see below).}
  \item{annotationslist}{Path to a text file containing a list of all gene annotations. Each annotation must contain the gene identifier mentioned in \code{genesonchip}}
  \item{allsequences}{Path to a tab-delimited text file containing two columns, the first with gene identifiers and the second with gene sequences. This parameter is for a feature that is not currently implemented.}
  \item{cutoff}{An integer cutoff value for distinguishing dark probes from bright probes based on probe intensity value.}
  \item{outputfile}{Path leading to desired output filename (a .tex file for input into latex).}
  \item{graphdirectory}{A directory for output of plots in encapsulated postscript format.}
  \item{outputtable}{Path leading to desired output filename (a .tdt file for further analysis of statistics for each individual gene).}
}
\details{
All probe names must have the following format: gene_identifier-probe_number. \code{array1data} must be sorted so that the probes for each gene are in the correct order (ie from probe 1 to the final probe). This is easily achieved with the unix sort command.
}
\references{http://www.stanford.edu/~ianpgm/tileplot}
\author{Ian Marshall}
\examples{
#This example code will deposit tex, tdt, and eps output into your R session directory
tileplot.single(genesonchip=system.file("allgenesonchip.ID", package="TilePlot"),  array1data=system.file("array1", package="TilePlot"),   annotationslist=system.file("all_annotations", package="TilePlot"),  allsequences=system.file("allgenesonchip.fasta.sequences", package="TilePlot"),  cutoff=150,  outputfile=file.path(tempdir(), "example_output.tex"),  graphdirectory=tempdir(), outputtable=file.path(tempdir(), "example_output.tdt"))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.