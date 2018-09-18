rm _main.Rmd
R -e "bookdown::preview_chapter('basic_homolo_based_fitness.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/basic_homolo_based_fitness')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/basic_homolo_based_fitness/basic-homology-based-fitness.html
rm -r _bookdown_files
