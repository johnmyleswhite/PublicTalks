function sqrt(x::Integer)
    if x < 0
        return nothing
    else
        return _sqrt(x)
    end
end
