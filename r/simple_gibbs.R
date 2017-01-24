theta_true = 10
sig_true = 3.5
N = 50

y = rnorm(N, theta_true, sig_true)
ybar = mean(y)


# A simple Gibbs sampler

# Prior for 1/sigma2
a = 1
b = 1

# Prior for theta: super vague
m_theta = 0
v_theta = 100^2

# Number of Monte Carlo draws
NMC = 1000
theta_save = rep(0, NMC)
sigma2_save = rep(0, NMC)

# Initial state
sigma2 = 1

for(i in 1:NMC) {
	
	# Conjugate update for theta, given sigma2
	theta_var = 1/{N/sigma2 + 1/v_theta}  # sum of precisions
	theta_hat = theta_var * {(N/sigma2)*ybar + m_theta/v_theta}
	theta = rnorm(1, theta_hat, sqrt(theta_var))
	
	# Conjugate update for sigma2, given theta
	omega = rgamma(1, a + N/2, rate = b + sum((y - theta)^2)/2)
	sigma2 = 1/omega
	
	# Save draws
	theta_save[i] = theta
	sigma2_save[i] = sigma2
}

hist(theta_save, 20);  abline(v = theta_true, col='red', lwd=2)
hist(sigma2_save, 20); abline(v = sig_true^2, col='red', lwd=2)



