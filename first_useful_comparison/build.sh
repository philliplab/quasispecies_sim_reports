rm _main.Rmd
R -e "rmarkdown::render('first_useful_comparison.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/first_useful_comparison')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/first_useful_comparison/first_useful_comparison.html
rm -r _bookdown_files
