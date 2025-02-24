% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sklearners.R
\name{DecisionTreeRegressor}
\alias{DecisionTreeRegressor}
\title{Decision tree regressor}
\usage{
DecisionTreeRegressor(
  criterion = "friedman_mse",
  min_samples_split = 2,
  min_samples_leaf = 1,
  min_weight_fraction_leaf = 0,
  max_depth = 3,
  splitter = "best",
  random_state = NULL
)
}
\arguments{
\item{criterion}{c("mse", "friedman_mse", "mae", "poisson"), default="mse"
The function to measure the quality of a split. Supported criteria
are "mse" for the mean squared error, which is equal to variance
reduction as feature selection criterion and minimizes the L2 loss
using the mean of each terminal node, "friedman_mse", which uses mean
squared error with Friedman's improvement score for potential splits,
"mae" for the mean absolute error, which minimizes the L1 loss using
the median of each terminal node, and "poisson" which uses reduction in
Poisson deviance to find splits.}

\item{min_samples_split}{int or float, default=2.
The minimum number of samples required to split an internal node:
\itemize{
\item If int, then consider \code{min_samples_split} as the minimum number.
\item If float, then \code{min_samples_split} is a fraction and
}

\code{ceil(min_samples_split * n_samples)} are the minimum number of samples for
each split..}

\item{min_samples_leaf}{int or float, default=2.
The minimum number of samples required to split an internal node:
\itemize{
\item If int, then consider \code{min_samples_split} as the minimum number.
\item If float, then \code{min_samples_split} is a fraction and
\code{ceil(min_samples_split * n_samples)} are the minimum
number of samples for each split.
}}

\item{min_weight_fraction_leaf}{Float, default=0.0.
The minimum weighted fraction of the sum total of weights (of all
the input samples) required to be at a leaf node.
Samples have equal weight when sample_weight is not provided.}

\item{max_depth}{An integer, default=None. The maximum depth of the tree.
If None, then nodes are expanded until all leaves are pure or until all
leaves contain less than min_samples_split samples.}

\item{splitter}{c("best", "random"), default="best".
The strategy used to choose the split at each node. Supported strategies are
"best" to choose the best split and "random" to choose the best random split.}

\item{random_state}{int, RandomState instance or None, default=None.
Controls the randomness of the estimator. The features are always
randomly permuted at each split, even if \code{splitter} is set to \code{"best"}.
When \code{max_features < n_features}, the algorithm will select \code{max_features}
at random at each split before finding the best split among them.
But the best found split may vary across different runs, even if
\code{max_features=n_features}. That is the case, if the improvement of the
criterion is identical for several splits and one split has to be selected
at random. To obtain a deterministic behaviour during fitting,
\code{random_state} has to be fixed to an integer.}
}
\value{
sklearn.tree._classes.DecisionTreeRegressor object
}
\description{
Decision tree regressor
}
\author{
Resul Akay
}
