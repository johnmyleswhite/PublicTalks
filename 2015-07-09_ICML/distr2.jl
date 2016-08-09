using Distributions

d = Gamma(1, 3)

x = rand(d, 10)

d̂ = fit(Gamma, x)
