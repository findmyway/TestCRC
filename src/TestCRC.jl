module TestCRC

using Flux

function f(m, x)
    gs = Flux.gradient(params(m)) do
        sum(m(x))
    end
    gs
end

end # module
