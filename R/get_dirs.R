#' get directory path to clean
#' @name get_dir
#' @param run_name run name to identify associated folder
#' @param which_dirs how to handle multiple directories
#' @param action cleaning action to perform (compress/rm)
#' @param dir_path specify directory other than default wd to check from
get_dir <- function(run_name, 
                    action = "compress",
                    which_dirs = NULL,
                    dir_path = NULL)
                    {
  
  if(!is.null(dir_path)) {
    path <- dir_path 
  } else {
    path <- getwd()
  }
  
  dirs <- list.dirs(path, recursive = F)
  run_dirs <- dirs[grep(run_name, dirs)]
  n_dirs <- length(run_dirs)
  if(n_dirs == 0) {
    stop("no directories with that run name found!") 
  } else if (n_dirs > 1) {
    if(is.null(which_dirs)) {
      stop("Please specify how to handle multiple directors with which_dirs")
    }
    multiple_dirs(run_dirs, which_dirs)
  } else { # folders ==1

  }
}