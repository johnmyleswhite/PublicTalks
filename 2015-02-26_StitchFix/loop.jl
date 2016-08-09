function loop(n)
     x = 0.0
     for i in 1:n
         x = x + randn()
     end
     return x
end

@time loop(10_000_000)
@time loop(10_000_000)
