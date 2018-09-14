sim_pop_arg_formatter <- function(args){
  arg_table <- data.frame(arg = character(0),
                          val = character(0),
                          stringsAsFactors = FALSE)
  arg_table <- do.call(rbind, list(
data.frame(arg = "Number of Ancestors", val = length(args$ancestors)),
data.frame(arg = "Sequence Length",     val = paste(nchar(args$ancestors), collapse = ', ')),
data.frame(arg = "r0",                  val = args$r0),
data.frame(arg = "Number of Generations", val = args$n_gen),
data.frame(arg = "Minimum Population Size", val = args$n_pop),
data.frame(arg = "Mutator Function", val = args$mutator$fun),
data.frame(arg = paste("Mutator: ", names(args$mutator$args), sep = ''),
           val = unlist(args$mutator$args)),
data.frame(arg = "Fitness Evaluator", val = args$fitness_evaluator$fun)
))

  if (is.null(args$fitness_evaluator$args)){
    arg_table <- rbind(arg_table,
      data.frame(arg = "Additional Fitness Evaluator Arguments",
                 val = "None")
      )
  } else {
    arg_table <- rbind(arg_table,
      data.frame(arg = paste("Fitness Evaluator: ", names(args$fitness_evaluator$args), sep = ''),
                 val = unlist(args$fitness_evaluator$args))
    )
  }
  row.names(arg_table) <- NULL
  names(arg_table) <- c("Argument", "Value")
  return(arg_table)
}

genealogy_summary_table <- function(genealogy){
  genealogy$ances_dist <- stringdist(genealogy[1,'the_seq'], genealogy[,'the_seq'])
  genealogy_summary <-
  genealogy %>% 
  select(gen_num, ances_dist, the_seq, fitness_score) %>% 
  group_by(gen_num) %>%
  summarize(n = n(),
            ances_dist = mean(ances_dist),
            nor_ances_dist = mean(ances_dist) / min(nchar(the_seq)),
            avg_fitness_score = mean(fitness_score),
            min_fitness_score = min(fitness_score))
  names(genealogy_summary) <- c(
    "Gen. Num.",
    "n",
    "Dist. to Ances.",
    "Normalized Dist.",
    "Fitness Score",
    "Min. Fitness Score"
  )
  return(genealogy_summary)
}
