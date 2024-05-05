
data {
  int<lower=0> N; // number of observations
  vector[N] x; // predictor (time spent on website)
  vector[N] y; // response (total amount spent)
}
parameters {
  real alpha; // intercept
  real beta; // slope
  real<lower=0> sigma; // standard deviation
}
model {
  alpha ~ normal(0, 10); // prior on the intercept
  beta ~ normal(0, 10); // prior on the slope
  sigma ~ inv_gamma(2, 1); // prior on the standard deviation
  y ~ normal(alpha + beta * x, sigma); // likelihood
}

