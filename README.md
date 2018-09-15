# Optimal_Cache_design_
In this project, the cache hierarchy on X86 architecture is fine-tuned based on the gem5
simulator. Gem5 is a simulator that’s a modular platform for computer-system architecture research.
It encompasses system-level architecture as well as processor microarchitecture.
The cache design parameters that are modified to obtain an optimized design are as follows:
  - CPU Types: timing
  - Cache levels: two levels (L1 and L2)
  - Size: L1: maximum size of 256Kb L2: maximum size of 1 Mb.
  - Associativity: 1, 2, 4, 8
  - Block size: 32 bytes, 64 bytes, 128 bytes, 256 bytes
  
Here, Gem 5 is used to model the different cache choices for the provided benchmarks
using different configurations **. The performance of the CPU is analyzed in the basis of CPU
calculated as : CPI =(𝑡𝑜𝑡𝑎𝑙 𝐼𝑛𝑠𝑡𝑟𝑢𝑐𝑡𝑖𝑜𝑛+4∗𝑖𝐿1 𝑜𝑣𝑒𝑟𝑎𝑙𝑙 𝑚𝑖𝑠𝑠𝑒𝑠+4∗𝑑𝐿1𝑜𝑣𝑒𝑟𝑎𝑙𝑙𝑚𝑖𝑠𝑠𝑒𝑠+80∗𝑑𝐿2 𝑜𝑣𝑒𝑟𝑎𝑙𝑙 𝑚𝑖𝑠𝑠𝑒𝑠 )/𝑡𝑜𝑡𝑎𝑙 𝐼𝑛𝑠𝑡𝑟𝑢𝑐𝑡𝑖𝑜𝑛
Given 4 = L1 miss penalty ;80 = L2 miss penalty
CPI is a measure of performance of the CPU as it is the number of clock cycles per instruction. A
lower CPI indicates better performance.
A cost function is later defined considering size as the key factor. Finally the most optimized cache
design choice for each benchmark is obtained by considering CPU and cost.
 The Perl script was used to run the simulation for each benchmark for different configurations. The simulation was executed in the background using the command “nohup”.
 To run the perl script succesfully, have the path of the script directed to the location where the decirption of your benchmark will be located.
 
 The SPEC benchmarks used for analyzing the optimal CPU cache are-
 -401.bzip2
 -429.mcf
 -456.hmmer
 -458.sjeng
 -470.lbm
 
 These benchmarks can be downloaded from GEM5 website
 
 The Cycles Per Instruction (CPI) for all given set of benchmarks are calculated according to the
baseline X86 configuration set up which is: -
CPU Models: containing Timing Simple CPU (timing)
- Cache levels: Two levels.
- Unified caches: Separate L1 data and L1 instruction caches, unified L2 cache.
- Size: 128KB L1 data cache, 128KB L1 instruction cache, 1MB unified L2 cache.
- Associativity: Two-way set-associative L1 caches, Direct-mapped L2 cache.
- Block size: 64 bytes (applied to all caches).
- Block replacement policy: Least Recent Used policy (LRU)

THe optimal CPI was achieved by going through several iterations of the associativity for both L1 Cache (instruction and
data) and L2 cache. These tests were also ran for different block sizes of the cache. The CPI for each
configuration was calculated and plotted for each cache kind.
As it was provided in the project the cache size of L1 is 128kB and L2 is 1MB.The following values
were considered for different parameters while determining the optimal cache design (in terms of
CPI) for each of the bench marks:
- CPU type: “Timing”
- L1 instruction cache: 128KB.
- L1 data cache: 128KB
- L2 cache: 1Mb, 2Mb
- Block size: 32 bytes, 64bytes, 128bytes and 256 bytes.
- Associativity of L1 cache as 1-way, 2-way, 4-way, 8-way,16-way
- Associativity of L2 cache as 2-way and 4-way
