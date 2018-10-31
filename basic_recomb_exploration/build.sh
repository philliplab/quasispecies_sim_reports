rm _main.Rmd
R -q -e "rmarkdown::render('/home/phillipl/projects/quasispecies_sim_reports/repo/quasispecies_sim_reports/basic_recomb_exploration/basic_recomb_exploration.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/basic_recomb_exploration')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/basic_recomb_exploration/basic_recomb_exploration.html
rm -r _bookdown_files
