# rebind `clear` to clear the console
clear_fun <- function() cat(c("\033[2J","\033[0;0H"));
makeActiveBinding("clear", clear_fun, baseenv())

# set default CRAN mirror
options(repos=c(CRAN="https://cloud.r-project.org/"))

# turn on completion of installed package names
utils::rc.settings(ipck = TRUE)

# devtools options

options(
  usethis.full_name = "Jackson Hoffart",
  usethis.description = list(
    `Authors@R` = 'c(person("Jackson", "Hoffart", email = "jackson.hoffart@gmail.com", role = c("aut", "cre"), comment = c(ORCID = "0000-0002-8600-5042")),
    person("RMI", role = c("cph", "fnd"))
    )',
    License = "MIT + file LICENSE",
    Version = "0.0.0.9000"
  ),
  usethis.protocol = "ssh",
)
