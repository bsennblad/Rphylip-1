\name{Rtreedist}
\alias{Rtreedist}
\title{R interface for treedist}
\usage{
Rtreedist(trees, method=c("branch.score","symmetric"), path=NULL, ...)
}
\arguments{
	\item{trees}{an object of class \code{"multiPhylo"}. (Or, under rare circumstances, an object of class \code{"phylo"}. See below.)}
	\item{method}{method to compute the distance between trees. \code{method="branch.score"} is the branch score method of Kuhner & Felsenstein (1994). \code{method="symmetric"} is the symmetric distance or Robinson-Foulds distance (Bourque 1978; Robinson & Foulds 1981).}
	\item{path}{path to the directory containing the executable treedist. If \code{path = NULL}, the R will search several commonly used directories for the correct executable file.}
	\item{...}{optional arguments to be passed to treedist. See details for more information.}
}
\details{
	Optional arguments include the following: \code{quiet} suppress some output to R console (defaults to \code{quiet = FALSE}); \code{trees2} object of class \code{"multiPhylo"} or \code{"phylo"} - if two sets of trees are to be compared; \code{rooted} logical value indicating whether trees should be treated as rooted (defaults to \code{rooted = FALSE}); \code{distances} argument telling treedist which distances to compute - could be \code{"all"} (all pairwise in \code{trees}), \code{"all.1to2"} (all in \code{trees} by all in \code{trees2}), \code{"adjacent"} (adjacent species in \code{trees} only), and \code{"corresponding"} (all corresponding trees in \code{trees} and \code{trees2}); and \code{cleanup} remove PHYLIP input & output files after the analysis is completed (defaults to \code{cleanup = TRUE}).

	More information about the treedist program in PHYLIP can be found here \url{http://evolution.genetics.washington.edu/phylip/doc/treedist.html}.

	Obviously, use of any of the functions of this package requires that PHYLIP (Felsenstein 1989, 2013) should first be installed. Instructions for installing PHYLIP can be found on the PHYLIP webpage: \url{http://evolution.genetics.washington.edu/phylip.html}.
}
\description{
	This function is an R interface for treedist in the PHYLIP package (Felsenstein 2013). treedist can be used to compute the distance between trees by two different methods.
}
\value{
	This function returns a matrix of pairwise distances for \code{distances = "all"} and \code{distances = "all.1to2"}, or a named vector for \code{distances = "adjacent"} and \code{distances = "corresponding"}.
}
\references{
	Bourque, M. (1978) \emph{Arbres de Steiner et reseaux dont certains sommets sont a localisation variable}. Ph.D. Dissertation, Universite de Montreal, Montreal, Quebec.

	Felsenstein, J. (1989) PHYLIP--Phylogeny Inference Package (Version 3.2). \emph{Cladistics}, 5, 164-166.

	Felsenstein, J. (2013) PHYLIP (Phylogeny Inference Package) version 3.695. Distributed by the author. Department of Genome Sciences, University of Washington, Seattle.

	Kuhner, M.K., Felsenstein, J. (1994) A simulation comparison of phylogeny algorithms under equal and unequal evolutionary rates. \emph{Molecular Biology and Evolution}, 11, 459-468.

	Robinson, D.F., Foulds, L.R. (1981) Comparison of phylogenetic trees. \emph{Mathematical Biosciences}, 53, 131-147.
}
\author{	
	Liam J. Revell, Scott A. Chamberlain

	Maintainer: Liam J. Revell <liam.revell@umb.edu>
}
\examples{
\dontrun{
trees<-rmtree(n=10,N=10)
D<-Rtreedist(trees,method="symmetric")
}
}
\keyword{phylogenetics}

