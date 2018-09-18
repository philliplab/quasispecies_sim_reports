rm _main.Rmd
R -e "bookdown::preview_chapter('first_useful_comparison.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/first_useful_comparison')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/first_useful_comparison/simulation-description.html
rm -r _bookdown_files
