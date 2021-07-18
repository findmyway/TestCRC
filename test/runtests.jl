using TestCRC
using BenchmarkTools
using Flux

res = @benchmark TestCRC.f($(Dense(4, 4)),$(rand(4, 32)))

display(res)

#=
ChainRulesCore@v0.10.12
BenchmarkTools.Trial: 62 samples with 1 evaluation.
 Range (min … max):  81.068 ms …  83.285 ms  ┊ GC (min … max): 0.00% … 0.00%
 Time  (median):     81.822 ms               ┊ GC (median):    0.00%
 Time  (mean ± σ):   81.879 ms ± 473.558 μs  ┊ GC (mean ± σ):  0.00% ± 0.00%

      ▂   ▂    ▂█     ▂  ▅▂                                     
  ▅▁▁▁██▁▅█▁██▁███▁▅███████▅▅▅▅▁▁▅▅▅▅▅▅█▁█▅▁▅▁▅▁▁▁▁▁▁▁▁▁▁▁▁▁▁▅ ▁
  81.1 ms         Histogram: frequency by time         83.3 ms <

 Memory estimate: 75.30 KiB, allocs estimate: 1036.     Testing TestCRC tests passed 

=#

#=
ChainRulesCore@v0.10.11

BenchmarkTools.Trial: 10000 samples with 1 evaluation.
 Range (min … max):  22.937 μs …  4.882 ms  ┊ GC (min … max): 0.00% … 97.85%
 Time  (median):     23.713 μs              ┊ GC (median):    0.00%
 Time  (mean ± σ):   25.517 μs ± 68.207 μs  ┊ GC (mean ± σ):  3.72% ±  1.39%

   █▆                                                          
  ▄███▅▄▃▂▂▄▆▅▃▂▂▂▂▃▃▂▂▂▂▂▂▂▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁ ▂
  22.9 μs         Histogram: frequency by time        33.7 μs <

 Memory estimate: 11.67 KiB, allocs estimate: 145.     Testing TestCRC tests passed 
 =#