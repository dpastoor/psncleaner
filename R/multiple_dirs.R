#' handling multiple directories
#' @param dir_vector vector of directories
#' @param which_dirs which directories to apply action to
multiple_dirs <- function(dir_vector, which_dirs) {
  MDIRS_OPTS <- c("all", "most_recent")
  dir_num <- FALSE
  if(which_dirs == "all") {
    
  } else if(which_dirs == "most_recent"){
    
  } else if(dir_num) {
    
  }
  else {
    stop(paste(
      "which_dirs option not recognized, 
specify one of the following options: \n ", 
      paste0("\"", MDIRS_OPTS, "\"", collapse=", "), 
      " OR \n a unique directory ending such as \"001\" given a target directory
of run999.mod.dir.001"))
  }
  
}