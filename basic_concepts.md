# Basic concepts of quasispecies simulation





## Simple first simulation


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



| gen_num|   n| ances_dist| nor_ances_dist| fitness_score| min_fitness_score|
|-------:|---:|----------:|--------------:|-------------:|-----------------:|
|       0|   1|     0.0000|      0.0000000|     0.4628579|         0.4628579|
|       1|   2|    52.0000|      0.1040000|     0.7418746|         0.7418746|
|       2|   4|    91.2500|      0.1825000|     0.5255057|         0.5255057|
|       3|   8|   130.7500|      0.2615000|     0.6199062|         0.6199062|
|       4|  16|   163.1250|      0.3262500|     0.4862049|         0.4862049|
|       5|  32|   190.6562|      0.3813125|     0.4779637|         0.4779637|
|       6|  64|   214.9844|      0.4299688|     0.5183639|         0.5183639|
|       7| 128|   235.8125|      0.4716250|     0.4755798|         0.4755798|
|       8| 256|   254.9219|      0.5098438|     0.5166713|         0.5166713|
|       9| 512|   270.8379|      0.5416758|     0.4951116|         0.4951116|
