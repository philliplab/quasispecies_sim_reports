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

sim_fit_unfit_pairs <- function(args, n_of_pairs,
                                group1_label, group2_label, 
                                group1_id, group2_id, 
                                all_sim_results, group_membership,
                                seed_offset,
                                req_fitness = 0.02, n_perfect_fit = 15, 
                                cacheName = NULL, verbose = FALSE){
  ptm <- proc.time()
  ltm <- proc.time()
  if (nrow(all_sim_results) == 0){
    index_offset <- 0
  } else {
    index_offset <- max(all_sim_results$sim_id)
  }
  for (i in 1:n_of_pairs){
    if (verbose){
      print('===============================')
      print(paste(i * 2 + index_offset - 1,
                  " and ",
                  i * 2 + index_offset,
                  sep = ''))
      print(proc.time() - ptm)
      print(proc.time() - ltm)
      ltm <- proc.time()
    }
    suppressMessages({
      x <- memoiseCache(fun = 'sim_pop', args = args, cacheName = cacheName, 
                        seed = seed_offset + i + index_offset/2)
    })
    x$fitness_score[1:n_perfect_fit] <- 1
    y <- get_fit_offspring(x, req_fitness, implementation = 'Rvec')
    
    original_col <- names(y)
    y$sim_id <- (i*2+index_offset)-1

    y$group_label <- group1_label
    y <- y %>% select(sim_id, group_label, original_col)

    y_last_gen_size <- nrow(y %>% filter(gen_num == max(gen_num)))
    x_last_gen_size <- nrow(x %>% filter(gen_num == max(gen_num)))
    x1 <- (x %>% filter(gen_num == max(gen_num)))[sample(1:x_last_gen_size, y_last_gen_size),]
    x2 <- rbind((x %>% filter(gen_num != max(gen_num))), x1)
    x2_last_gen_size <- nrow(x2 %>% filter(gen_num == max(gen_num)))
    stopifnot(x2_last_gen_size == y_last_gen_size)
  
    x2$sim_id <- (i * 2 + index_offset)
    x2$group_label <- group2_label
    x2 <- x2 %>% select(sim_id, group_label, original_col)

    all_sim_results <- rbind(all_sim_results,
                             rbind(y, x2))
    
    group_membership <- rbind(group_membership,
      data.frame(sim_id = c(i * 2 + index_offset-1, i*2+index_offset), 
                 group_id = c(group1_id, group2_id))
      )
  }
  return(list(all_sim_results = all_sim_results,
              group_membership = group_membership))
}
