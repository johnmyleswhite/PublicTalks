Julia

Low-level languages
High-level languages

Compromise, combined with modern PLT ideas

Static compilation at run-time

function collatz(x, y)
    ...
end

@code_native(collatz, (Int, Int))
@code_native(collatz, (Uint16, Uint16))
