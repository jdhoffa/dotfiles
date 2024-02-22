.First <- function() {
  options(prompt = paste0("[R] > "))

  # rebind `clear` to clear the console
  clear_fun <- function() cat(c("\033[2J", "\033[0;0H"))
  makeActiveBinding("clear", clear_fun, baseenv())

  # set default CRAN mirror
  options(repos = c(CRAN = "https://cloud.r-project.org/"))

  options(
    usethis.description = list(
      "Authors@R" = utils::person(
        "Jackson", "Hoffart",
        email = "jackson.hoffart@gmail.com",
        role = c("aut", "cre"),
        comment = c(ORCID = "0000-0002-8600-5042")
      )
    ),
    usethis.destdir = "~/github"
  )
}
