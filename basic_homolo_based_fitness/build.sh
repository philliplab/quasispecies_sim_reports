rm _main.Rmd
R -q -e "rmarkdown::render('/home/phillipl/projects/quasispecies_sim_reports/repo/quasispecies_sim_reports/basic_homolo_based_fitness/basic_homolo_based_fitness.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/basic_homolo_based_fitness')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/basic_homolo_based_fitness/basic_homolo_based_fitness.html
rm -r _bookdown_files
