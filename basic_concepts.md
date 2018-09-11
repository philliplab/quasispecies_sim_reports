# Basic concepts of quasispecies simulation






Table: Called sim_pop with the following arguments.



|arg                                    |val                           |
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



| gen_num|   n| ances_dist| nor_ances_dist|
|-------:|---:|----------:|--------------:|
|       0|   1|     0.0000|      0.0000000|
|       1|   2|    53.5000|      0.1070000|
|       2|   4|    96.2500|      0.1925000|
|       3|   8|   133.7500|      0.2675000|
|       4|  16|   168.3750|      0.3367500|
|       5|  32|   196.1562|      0.3923125|
|       6|  64|   219.4844|      0.4389688|
|       7| 128|   240.0156|      0.4800312|
|       8| 256|   258.2344|      0.5164688|
|       9| 512|   273.6309|      0.5472617|
