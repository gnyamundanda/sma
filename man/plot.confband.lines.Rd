%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file was automatically generated by Rdoc on 2001-04-20 20:18:16.
% Do NOT modify this file, instead modify the source (sma/R/Rmva.R).
% Rdoc is copyright (C) 2001, Henrik Bengtsson, henrikb@braju.com.
% Download the Rdoc compiler at http://www.braju.com/R/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{plot.confband.lines}

\alias{plot.confband.lines}

\title{Adding Lines Satisfying a Confidence Criterion to the Current M
  vs A Plot}

\description{
  This function adds 2 lines outlining the pointwise (intensity
  dependent) confidence band on the M vs A plot.  The lines are drawn
  such that a prespecified proportion of points are outside the 2
  confidence curves.
  The type of line may be specified as well as other parameters.}

\usage{
plot.confband.lines(x, M, crit1=0.025, crit2=crit1, nclass=10, ...)
}

\arguments{
 \item{x}{a vector giving the x-coordinates of the points in the scatter
          plot. In the microarray context, this could be a vector of
          average log intensities, ie A} 

 \item{M}{a vector giving the y-coordinates of the points in the scatter
   plot. In the microarray context, this could be a vector of log
   intensity ratios.} 
	
 \item{crit1}{The proportion of points less than the lower confidence
   curve.  This takes a decimal value between 0 and 1. }
 \item{crit2}{The proportion of points greater than the upper confidence
   curve.  By default, this has the same value as "crit1".}
 \item{nclass}{A single number giving the approximate number of
 intensity depedent groups to consider.} 
 \item{\dots}{graphical parameters may also be supplied as arguments
 to the function (see  \code{\link{par}}).}        
}

\value{
  Lines are added to the current plot.
}

\note{
  An M vs A plot must be constructed \bold{prior} to the execution
  of this function.} 

\seealso{ \code{\link{plot.mva}}, \code{\link{stat.ma}},
  \code{\link{lines}}, \code{\link{matlines}},
  \code{\link{plot.confband.text}}, \code{\link{plot.confband.points}} .
}

\examples{data(MouseArray)
## mouse.setup <- init.grid
## mouse.data <- init.data

## To display an M vs A plot of the data 
plot.mva(mouse.data, mouse.setup) 

## Calculate M and A values 
mouse.lratio <- stat.ma(mouse.data, mouse.setup)

## To add default upper and lower confidence curves line to the M vs A plot
plot.confband.lines(mouse.lratio$A, mouse.lratio$M) 
}

%\keyword{microarray, point-wise confidence band.}

\keyword{aplot}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of File
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
