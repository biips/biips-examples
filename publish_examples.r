library(rmarkdown)

root_dir = getwd()

output_dir = file.path(root_dir, "docs/rbiips")

clear_cache = TRUE

example_scripts = list()
example_scripts$tutorial = c("tutorial1", "tutorial2", "tutorial3")
example_scripts$object_tracking = c("hmm_4d_nonlin")
example_scripts$stoch_kinetic = c("stoch_kinetic", "stoch_kinetic_gill")
example_scripts$stoch_volatility = c("stoch_volatility",
                                     "switch_stoch_volatility",
                                     "switch_stoch_volatility_param")

# loop over all example directories
for (ex_dir in names(example_scripts)) {
  # set example output directory
  out_dir = file.path(output_dir, ex_dir)
  dir.create(out_dir, recursive = TRUE, showWarnings=FALSE)
  # loop over all scripts in example directory
  for (ex_script in example_scripts[[ex_dir]]) {
    # change directory
    setwd(file.path(root_dir, ex_dir))
    # clear cache
    if (clear_cache)
      unlink(paste0(ex_script, "_cache"), recursive=TRUE)
    # render html
    input = paste0(ex_script, ".r")
    rmarkdown::render(input,
                      output_dir = out_dir,
                      output_format="html_document")
  }
}
