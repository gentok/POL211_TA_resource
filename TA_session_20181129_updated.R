#' ---
#' title: "POL211 TA Session"
#' author: "Gento Kato"
#' date: "November 29, 2018"
#' ---

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
rm(list = ls()) # Remove all objects from workspace.

#' 
#' ## Distribution Functions
#' 
#' ### Binomial Distribution
#' 

?rbinom

#' 
#' * size = number of trials (n in lecture)
#' * prob = probability of success (p in lecture)
#' 

# Random Draws from the distribution: n = sample size
rbinom(10, size = 1000, prob = c(0.9))
# If you want to store generated values
a <- rbinom(10, size = 1000, prob = c(0.9))
a

# Pr of specific values in the distribution 
# i.e., f(x) = Pr(X=x)
dbinom(900, size = 1000, prob = c(0.9))

# Cummulative Probability of values 
# i.e., F(x) Pr(X<=q)
pbinom(900, size = 1000, prob = c(0.9))
sum(dbinom(0:900, size = 1000, prob = c(0.9)))

# The value that satisfies the specific cummulative probabilities 
qbinom(0.5154177, size = 1000, prob = c(0.9))

#'
#' ### Poisson Distribution
#'

?rpois

#'
#' * lambda = mean
#'

rpois(10, 414)
dpois(400, 414)
ppois(400, 414)
qpois(0.8, 414)

#'
#' ### Negative Binomial
#'

?rnbinom

#'
#' * size = number of successful trials (r in lecture)
#' * prob = probability of success in each trial (p in lecture)
#'


rnbinom(10, size=1000, prob=0.8)
dnbinom(200, size=1000, prob=0.8)
pnbinom(250, size=1000, prob=0.8)
qnbinom(0.8, size=1000, prob=0.8)

#' 
#' ### Continuous Uniform
#' 

?runif

#'
#' * min = lower limit of distribution (a in lecture)
#' * max = upper limit of distribution (b in lecture)
#'

runif(10, min=10, max=20)
dunif(15, min=10, max=20)
punif(17, min=10, max=20)
qunif(0.8, min=10, max=20)

#' 
#' ### Exponential
#' 

?rexp

#'
#' * rate = lambda in lecture
#'

rexp(10, rate=5)
dexp(15, rate=5)
pexp(2, rate=2)
qexp(0.8, rate=5)

#' 
#' ### Normal
#' 

?rnorm

#'
#' * mean = lower limit of distribution (a in lecture)
#' * sd = upper limit of distribution (b in lecture)
#'

rnorm(10, mean=5, sd=10)
dnorm(8, mean=5, sd=10)
pnorm(10, mean=5, sd=10)
qnorm(0.8, mean=5, sd=10)

#' # Using Data from MASS Package (Just in case)

# Install package (only once per PC)
#+ eval=F
install.packages("MASS")
#+ Make the package availabe in workspace
library(MASS)

# Data list
data()

# Choose Data
data(airquality)

# See help file
?airquality
# list of variable names
names(airquality)

# Plot 
plot(hist(airquality$Wind)) # Histogram
plot(density(airquality$Wind)) # Density

#+ include=FALSE 
## Render PDF Document 
#+ eval=FALSE, echo=FALSE
rmarkdown::render("TA_session_20181129_updated.R","pdf_document")
