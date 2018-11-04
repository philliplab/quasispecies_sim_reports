sim_pop_arg_formatter <- function(args){
  arg_table <- data.frame(arg = character(0),
                          val = character(0),
                          stringsAsFactors = FALSE)
  arg_table <- do.call(rbind, list(
data.frame(arg = 'Label'              , val = args$label, stringsAsFactors = FALSE),
data.frame(arg = "Number of Ancestors", val = length(args$ancestors), stringsAsFactors = FALSE),
data.frame(arg = "Sequence Length",     val = paste(nchar(args$ancestors), collapse = ', '), stringsAsFactors = FALSE),
data.frame(arg = "r0",                  val = args$r0, stringsAsFactors = FALSE),
data.frame(arg = "Number of Generations", val = args$n_gen, stringsAsFactors = FALSE),
data.frame(arg = "Minimum Population Size", val = args$n_pop, stringsAsFactors = FALSE),
data.frame(arg = "Mutator Function", val = args$mutator$fun, stringsAsFactors = FALSE),
data.frame(arg = paste("Mutator: ", names(args$mutator$args), sep = ''),
           val = unlist(args$mutator$args), stringsAsFactors = FALSE),
data.frame(arg = "Fitness Evaluator", val = args$fitness_evaluator$fun, stringsAsFactors = FALSE),
data.frame(arg = 'Required Fitness', val = args$required_fitness, stringsAsFactors = FALSE)
))

  if (is.null(args$fitness_evaluator$args)){
    arg_table <- rbind(arg_table,
      data.frame(arg = "Additional Fitness Evaluator Arguments",
                 val = "None", stringsAsFactors = FALSE)
      )
  } else {
    arg_table <- rbind(arg_table,
      data.frame(arg = paste("Fitness Evaluator: ", names(args$fitness_evaluator$args), sep = ''),
                 val = unlist(args$fitness_evaluator$args), stringsAsFactors = FALSE)
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

