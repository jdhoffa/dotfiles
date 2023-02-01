.First <- function() {
  
  options(prompt = paste0("[R] > "))

  # rebind `clear` to clear the console
  clear_fun <- function() cat(c("\033[2J","\033[0;0H"));
  makeActiveBinding("clear", clear_fun, baseenv())

  # set default CRAN mirror
  options(repos=c(CRAN="https://cloud.r-project.org/"))


}
