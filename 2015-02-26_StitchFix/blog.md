John Myles White recently visited the StichFix office to give a talk about
Julia, [the programming language that some of
us love](http://technology.stitchfix.com/blog/2014/12/04/i-heart-julia/).

John started his talk by claiming that performance matters for realistic data
science workloads in industry. Because performance matters, John argues, we
need to have better programming language tools for doing data science.

To describe what's wrong with the current generation of programming languages,
John walked through an example of writing a naive implementation of
[Brownian motion](http://en.wikipedia.org/wiki/Brownian_motion) in R:

```
loop <- function (n) {
    x <- 0.0
    for (i in 1:n) {
        x <- x + rnorm(1)
    }
    return(x)
}
```

John noted that computing a single sample from this process at time
`n = 10,000,000` takes around 35 seconds in R. John then wrote out a straight
translation into Julia:

```
function loop(n)
     x = 0.0
     for i in 1:n
         x = x + randn()
     end
     return x
end
```

This implementation, John noted, takes only 0.14 seconds to run. The rest of
John's talk focused on explaining the reasons that the R interpreter executes
such similar code to the Julia version so much more slowly than the Julia
compiler.

John focused on several technical problems with R as an interpreter/language
that produce slowdowns:

* Numerical values in R are subject to indirection because R almost never
  assumes that the type of a variable is constant throughout the body of
  a function.
* Scalar values in R don't exist, which imposes additional indirection when
  you only want to work with a single scalar value.
* Because scalar values don't exist in R, every single addition step in
  the main loop of this function has to allocate a new chunk of memory in
  which to store a vector.
* Because R allows function calls within a function to change the semantics of
  almost everything else in the language, every operation must check whether
  its semantics are unaltered at every iteration in the loop.

Taken collectively, John argued that most of the time that the R interpreter
uses to generate a single sample of Brownian motion isn't strictly necessary to
produce the correct result: most of the time, the R interpreter executes code
that exists only to deal with possibilities that often don't occcur in
practice.

John then switched to discussing the tools that the Julia compiler uses to
generate more efficient code for the same kind of function:

* Julia infers the types of all variables inside the body of the `loop`
  function, conditional on knowing the types of the input arguments `n`.
  In practice, `loop` is only going to be called with an integer argument,
  so John walked through the full inference results for the function given
  that `n` is an integer
* With the results of type inference in hand, Julia is able to generate
  machine code at run-time using LLVM that corresponds to what a simple
  translation of the type-annotated Julia code into C would look like.
* Julia then executes the function body using the run-time compiled code.

John argued that what sets Julia apart from existing data science langauges is
the combined strength of:

* Julia's type inference system
* A large body of Julia code that's amenable to type inference
* The quality of LLVM's generated machine code

John closed his talk by describing the reasons why it's so much easier to do
type inference in Julia than in R or Python. Given the difficulty of employing
the specific compiler techniques being used to speed up Julia, John
described some alternative compiler techniques we might expect to see used in
R or Python compilers, but noted that the alternative techniques are often
more technically challening to implement correctly. Given those difficulties,
John believes that Julia is best positioned to be the next generation data
science language.
