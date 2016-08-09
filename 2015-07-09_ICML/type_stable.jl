function sqrt(x::Integer)
    if x < 0
        return Nullable{Float64}()
    else
        return Nullable{Float64}(_sqrt(x))
    end
end
