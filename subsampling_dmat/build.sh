rm _main.Rmd
R -e "bookdown::preview_chapter('subsampling_dmat.Rmd', output_dir = '/home/phillipl/projects/quasispecies_sim_reports/builds/subsampling_dmat')"
firefox /home/phillipl/projects/quasispecies_sim_reports/builds/subsampling_dmat/subsampling-dmat.html
rm -r _bookdown_files

