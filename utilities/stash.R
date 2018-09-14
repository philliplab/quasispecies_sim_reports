

kable(
  sim_pop_arg_formatter(args),
  booktabs = TRUE,
  caption = "Configuration with which sim_pop was called."
)
```

```{r mu-1-1000-sum-tab, results = 'asis'}
g_sum_tab <- genealogy_summary_table(x)

kable(
  g_sum_tab,
  booktabs = TRUE,
  caption = "Individuals per generation and the average distance to the original ancestor for the generation."
)
```

```{r, include = FALSE}
last_gen <-
x %>%
  filter(gen_num == max(gen_num))

dmat <- stringdistmatrix(last_gen$the_seq, method = 'hamming')
avg_hd <- mean(dmat)
dvec <- as.numeric(dmat)/min(nchar(last_gen$the_seq))
dd.f <- data.frame(dists = dvec)
```

```{r mu-1-1000-density-plot, fig.cap='Density plot of the pariwise distances in the last generation', results = 'asis'}
n_uniq <- nrow(unique(dd.f))
range_length <- max(dd.f$dists) - min(dd.f$dists)
bw <- range_length / min((n_uniq*1.75), 200)
ggplot(dd.f, aes(x = dists)) + geom_density(bw = bw)
```

```{r mu-1-1000-deciles, results = 'asis'}
deciles <-
data.frame(Decile = paste((0:10)*10, "%", sep = ''),
           Value = quantile(dvec, (0:10)/10))
row.names(deciles) <- NULL
kable(
  deciles,
  booktabs = TRUE,
  caption = "The deciles of the pairwise HDs"
)
```

