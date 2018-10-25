#' ---
#' title: "POL211 TA Session 3"
#' author: "Gento Kato"
#' date: "October 25, 2018"
#' ---

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
rm(list = ls()) # Remove all objects from workspace.

#' ## Revisit Hotel Vacancy problem
#' 
#' Calculate the answer to the proability that at least all hotels have one person

test <- list(NA)
index <- list(NA)
i <- 1

for(na in 1:12){
  for(nb in 1:(13-na)){
    for(nc in 1:(14-na-nb)){
      test[i] <- 1/16 * 1/(16 - na) * 1/(16-na-nb)
      index[i] <- i
      i <- i + 1
    }
  }
}

#' ## Distribution Functions

#' ### Binomial Distribution

?rbinom

# Random Draws from the distribution
rbinom(10, size = 1000, prob = c(0.9))

# Pr of specific values in the distribution 
dbinom(900, size = 1000, prob = c(0.9))

# Cummulative Probability of values 
pbinom(900, size = 1000, prob = c(0.9))
sum(dbinom(0:900, size = 1000, prob = c(0.9)))

# The value that satisfies the specific cummulative probabilities 
qbinom(0.8, size = 1000, prob = c(0.9))

#' ### Binomial Distribution?
rbinom(10, size = 1, prob=0.5)

#' ### Poisson Distribution

?rpois

rpois(10, 414)
dpois(400, 414)
ppois(400, 414)
qpois(0.8, 414)

#' ### Continuous Uniform

?runif

runif(10, min=10, max=20)
dunif(15, min=10, max=20)
punif(17, min=10, max=20)
qunif(0.8, min=10, max=20)


#' ### Negative Binomial

?rnbinom

rnbinom(10, size=1000, prob=0.8)
dnbinom(200, size=1000, prob=0.8)
pnbinom(250, size=1000, prob=0.8)
qnbinom(0.8, size=1000, prob=0.8)

#+ include=FALSE 
## Render PDF Document 

#+ eval=FALSE, echo=FALSE
rmarkdown::render("TA_session_20181025.R","pdf_document")
