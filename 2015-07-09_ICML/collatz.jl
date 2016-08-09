function collatz(x::Integer)
    i = 0
    while x != 1
        i += 1
        if rem(x, 2) == 0
            x = fld(x, 2)
        else
            x = 3 * x + 1
        end
    end
    return i
end

[collatz(x) for x in 1:10_000]

code_native(collatz, (Int, ))
