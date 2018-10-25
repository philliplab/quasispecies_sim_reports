# Exploring HIV infection timing based on the evolution of the quasispecies.

## Explanation of some basic concepts

[Basic concepts](https://htmlpreview.github.io/?https://github.com/philliplab/quasispecies_sim_reports/blob/master/published/basic_concepts_v1/basic_concepts.html)

## First useful comparison

[First comparison with random fitness](https://htmlpreview.github.io/?https://github.com/philliplab/quasispecies_sim_reports/blob/master/published/first_useful_comparison_v2/first_useful_comparison.html)

## Fitness based on homology to a target

[Basic homology based fitness report](https://htmlpreview.github.io/?https://github.com/philliplab/quasispecies_sim_reports/blob/master/published/basic_homolo_based_fitness_v1/basic-homology-based-fitness.html)

## Old reports

[First comparison with random fitness v1](https://htmlpreview.github.io/?https://github.com/philliplab/quasispecies_sim_reports/blob/master/published/first_useful_comparison_v1/first-useful-comparison.html)

## Project Plan and Goals

### Primary Question

Will selection pressure resulting from VRC01 affect the timing estimates?

Since our timing estimates are primarily based on PFitter and PFitter's estimate is just a function of lambda, the parameter of the Poisson distribution describing the occurance rates of different pairwise distances, which is estimated by the expected value of the pairwise distances, we can just consider the average pairwise hamming distance as a proxy measure.

#### Metrics

We are primarily interested in:

* Do additional pressure shift the average pairwise distance?
* Do additional pressure increase the variability of the pairwise distances?

A secondary interest is:

* Do additional pressure change the shape of the distribution of the the pairwise distances? Specifically, are there conditions under which the distribution becomes bimodal?

#### Nature of the selective pressure

We are separatly considering two different types of pressure:

* The ancestral sequence is under pressure (transmission of a variant that is susceptible to VRC01)
* The ancestral sequence is not under pressure (transmission of a resistant variant)

Currently the fitness space is not constrained, so a variant can mutate to be composed of only stop codons and still be considered viable.

### Possible solutions

If we find that some of the pressure affect the metrics we are considering, what are possible solutions?

* Can we mask out the positions that are under selection? Do the effect of the selective pressure go away?
* If some scenarios cause the distribution of the pairwise distances to become multimodal, do the multifounder version of PFitter correct this effect?

### Recombination

VRC01 only targets ENV. If we sequence GAG, then the high recombination rate present in HIV might negate the effect of the selective pressure. Can we explore these cases using simulations?

## Results

Number of generations: 17 (2^17 ~ 130k)
Sequence Length: 500
Mutation Rate: Each nucleotide has 1 in 250 chance to mutate between parent and offspring
Ancestral Sequence: 500 As
Fitness computed based on similarity to defined epitope
First 5 generations are assigned perfect fitness
A required fitness is specified and if an individual is below the threshold, it and all its offspring is removed. If no offspring remains, the sample is resimulated.

400 datasets simulated in total (100 per case)

Epitope 1: Matching the ancestor:
Average Pairwise distances are nearly identical. 58.777 vs 58.768
Standard deviation of the pairwise hamming distances are ~13% larger in the fitness restricted group.

Epitope 2: Not matching the ancestor:
Average pairwise distances slightly lower (3%) in fitness restricted samples 57.2 vs 58.94
Standard deviations LOWER in the fitness restricted samples (~13.5%)

## Next steps

1) Run over night with 250 samples and the same setup.
2) Record the number of sequences eliminated by fitness selection process
3) Fix the bandwidth selection for the density estimation in the new simulation process
4) Change the number of generations that gets assigned perfect fitness to see if it affects the occurence of the bimodality.




