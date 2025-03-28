% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_severity_vs_nphenotypes.R
\name{plot_severity_vs_nphenotypes}
\alias{plot_severity_vs_nphenotypes}
\title{Plot severity vs. number of phenotypes}
\usage{
plot_severity_vs_nphenotypes(
  results,
  gpt_annot = HPOExplorer::gpt_annot_codify(),
  cl = get_cl(),
  q_threshold = 0.5,
  n_label = 3,
  size = 3,
  min.segment.length = 0,
  remove_subtitle = FALSE,
  remove_caption = TRUE,
  point_fill = ggplot2::alpha("white", 0.75),
  base_size = 8,
  run_prune_ancestors = FALSE,
  ...
)
}
\arguments{
\item{results}{The cell type-phenotype enrichment results generated by
\link[MSTExplorer]{gen_results}
and merged together with \link[MSTExplorer]{merge_results}}

\item{gpt_annot}{A data.table of GPT annotations.}

\item{cl}{Cell Ontology object.}

\item{q_threshold}{The q value threshold to subset the \code{results} by.}

\item{n_label}{The number of top and bottom cell types to label in the plot.
Top/bottom terms are determined by sorting on both the x and y axes.}

\item{size}{Label text size.}

\item{min.segment.length}{Skip drawing segments shorter than this, as unit or
number. Defaults to 0.5. (Default unit is lines, but other units can be
specified by passing \code{unit(x, "units")}).}

\item{remove_subtitle}{Remove the formula in the subtitle.
See \link[ggstatsplot]{ggscatterstats} for details.}

\item{remove_caption}{Remove the formula in the caption.
See \link[ggstatsplot]{ggscatterstats} for details.}

\item{point_fill}{Fill color of the points.}

\item{base_size}{base font size, given in pts.}

\item{run_prune_ancestors}{Prune redundant ancestral terms if any of their
descendants are present. Passes to \link[KGExplorer]{prune_ancestors}.}

\item{...}{
  Arguments passed on to \code{\link[ggstatsplot:ggscatterstats]{ggstatsplot::ggscatterstats}}
  \describe{
    \item{\code{data}}{A data frame (or a tibble) from which variables specified are to
be taken. Other data types (e.g., matrix,table, array, etc.) will \strong{not}
be accepted. Additionally, grouped data frames from \code{{dplyr}} should be
ungrouped before they are entered as \code{data}.}
    \item{\code{x}}{The column in \code{data} containing the explanatory variable to be
plotted on the \code{x}-axis.}
    \item{\code{y}}{The column in \code{data} containing the response (outcome) variable to
be plotted on the \code{y}-axis.}
    \item{\code{type}}{A character specifying the type of statistical approach:
\itemize{
\item \code{"parametric"}
\item \code{"nonparametric"}
\item \code{"robust"}
\item \code{"bayes"}
}

You can specify just the initial letter.}
    \item{\code{conf.level}}{Scalar between \code{0} and \code{1} (default: \verb{95\%}
confidence/credible intervals, \code{0.95}). If \code{NULL}, no confidence intervals
will be computed.}
    \item{\code{bf.prior}}{A number between \code{0.5} and \code{2} (default \code{0.707}), the prior
width to use in calculating Bayes factors and posterior estimates. In
addition to numeric arguments, several named values are also recognized:
\code{"medium"}, \code{"wide"}, and \code{"ultrawide"}, corresponding to \emph{r} scale values
of \code{1/2}, \code{sqrt(2)/2}, and \code{1}, respectively. In case of an ANOVA, this
value corresponds to scale for fixed effects.}
    \item{\code{bf.message}}{Logical that decides whether to display Bayes Factor in
favor of the \emph{null} hypothesis. This argument is relevant only \strong{for
parametric test} (Default: \code{TRUE}).}
    \item{\code{tr}}{Trim level for the mean when carrying out \code{robust} tests. In case
of an error, try reducing the value of \code{tr}, which is by default set to
\code{0.2}. Lowering the value might help.}
    \item{\code{digits}}{Number of digits for rounding or significant figures. May also
be \code{"signif"} to return significant figures or \code{"scientific"}
to return scientific notation. Control the number of digits by adding the
value as suffix, e.g. \code{digits = "scientific4"} to have scientific
notation with 4 decimal places, or \code{digits = "signif5"} for 5
significant figures (see also \code{\link[=signif]{signif()}}).}
    \item{\code{results.subtitle}}{Decides whether the results of statistical tests are
to be displayed as a subtitle (Default: \code{TRUE}). If set to \code{FALSE}, only
the plot will be returned.}
    \item{\code{label.var}}{Variable to use for points labels entered as a symbol (e.g.
\code{var1}).}
    \item{\code{label.expression}}{An expression evaluating to a logical vector that
determines the subset of data points to label (e.g. \code{y < 4 & z < 20}).
While using this argument with \code{\link[purrr:pmap]{purrr::pmap()}}, you will have to provide
a quoted expression  (e.g. \code{quote(y < 4 & z < 20)}).}
    \item{\code{marginal}}{Decides whether marginal distributions will be plotted on
axes using \code{{ggside}} functions. The default is \code{TRUE}. The package
\code{{ggside}} must already be installed by the user.}
    \item{\code{point.args}}{A list of additional aesthetic arguments to be passed to
the \code{\link[ggplot2:geom_point]{ggplot2::geom_point()}}.}
    \item{\code{point.width.jitter,point.height.jitter}}{Degree of jitter in \code{x} and \code{y}
direction, respectively. Defaults to \code{0} (0\%) of the resolution of the
data. Note that the jitter should not be specified in the \code{point.args}
because this information will be passed to two different \code{geom}s: one
displaying the \strong{points} and the other displaying the *\strong{labels} for
these points.}
    \item{\code{point.label.args}}{A list of additional aesthetic arguments to be passed
to \code{\link[ggrepel:geom_text_repel]{ggrepel::geom_label_repel()}}geom used to display the labels.}
    \item{\code{smooth.line.args}}{A list of additional aesthetic arguments to be passed
to \code{geom_smooth} geom used to display the regression line.}
    \item{\code{xsidehistogram.args,ysidehistogram.args}}{A list of arguments passed to
respective \code{geom_}s from the \code{{ggside}} package to change the marginal
distribution histograms plots.}
    \item{\code{xlab}}{Label for \code{x} axis variable. If \code{NULL} (default),
variable name for \code{x} will be used.}
    \item{\code{ylab}}{Labels for \code{y} axis variable. If \code{NULL} (default),
variable name for \code{y} will be used.}
    \item{\code{title}}{The text for the plot title.}
    \item{\code{subtitle}}{The text for the plot subtitle. Will work only if
\code{results.subtitle = FALSE}.}
    \item{\code{caption}}{The text for the plot caption. This argument is relevant only
if \code{bf.message = FALSE}.}
    \item{\code{ggtheme}}{A \code{{ggplot2}} theme. Default value is
\code{\link[ggstatsplot:theme_ggstatsplot]{theme_ggstatsplot()}}. Any of the \code{{ggplot2}} themes (e.g.,
\code{\link[ggplot2:ggtheme]{ggplot2::theme_bw()}}), or themes from extension packages are allowed
(e.g., \code{ggthemes::theme_fivethirtyeight()}, \code{hrbrthemes::theme_ipsum_ps()},
etc.). But note that sometimes these themes will remove some of the details
that \code{{ggstatsplot}} plots typically contains. For example, if relevant,
\code{\link[ggstatsplot:ggbetweenstats]{ggbetweenstats()}} shows details about multiple comparison test as a
label on the secondary Y-axis. Some themes (e.g.
\code{ggthemes::theme_fivethirtyeight()}) will remove the secondary Y-axis and
thus the details as well.}
    \item{\code{ggplot.component}}{A \code{ggplot} component to be added to the plot prepared
by \code{{ggstatsplot}}. This argument is primarily helpful for \code{grouped_}
variants of all primary functions. Default is \code{NULL}. The argument should
be entered as a \code{{ggplot2}} function or a list of \code{{ggplot2}} functions.}
  }}
}
\description{
Plot the mean composite GPT severity score of all all the phenotypes each
cell type is significantly associated with vs. the number of phenotypes
each cell types is significantly associated with.
}
\examples{
results <- load_example_results()
out <- plot_severity_vs_nphenotypes(results=results)
}
