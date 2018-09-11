# Basic concepts of quasispecies simulation





## Simple first simulation


Table: Called sim_pop with the following arguments.



|Argument                               |Value                         |
|:--------------------------------------|:-----------------------------|
|Number of Ancestors                    |1                             |
|Sequence Length                        |500                           |
|r0                                     |2                             |
|Number of Generations                  |9                             |
|Minimum Population Size                |Inf                           |
|Mutator Function                       |mutator_uniform_fun           |
|Mutator: mu                            |0.1                           |
|Fitness Evaluator                      |fitness_evaluator_uniform_fun |
|Additional Fitness Evaluator Arguments |None                          |



Table: Individuals per generation and the average distance to the original ancestor for the generation.



| Gen. Num.|   n| Dist. to Ances.| Normalized Dist.| Fitness Score| Min. Fitness Score|
|---------:|---:|---------------:|----------------:|-------------:|------------------:|
|         0|   1|          0.0000|        0.0000000|     0.7369267|          0.7369267|
|         1|   2|         49.0000|        0.0980000|     0.3778743|          0.3778743|
|         2|   4|         89.7500|        0.1795000|     0.6031775|          0.6031775|
|         3|   8|        126.5000|        0.2530000|     0.2344801|          0.2344801|
|         4|  16|        160.4375|        0.3208750|     0.5438236|          0.5438236|
|         5|  32|        188.9375|        0.3778750|     0.5589480|          0.5589480|
|         6|  64|        212.6250|        0.4252500|     0.5076930|          0.5076930|
|         7| 128|        233.5938|        0.4671875|     0.5253259|          0.5253259|
|         8| 256|        252.6680|        0.5053359|     0.5325627|          0.5325627|
|         9| 512|        269.0664|        0.5381328|     0.5001821|          0.5001821|
