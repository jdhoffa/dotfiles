if (interactive()) {
  suppressMessages(require(devtools))
}

usethis.full_name = "Jackson Hoffart"
usethis.protocol  = "ssh"
usethis.description = list(
  "Authors@R" = utils::person(
    "Jackson", "Hoffart",
    email = "jackson.hoffart@gmail.com",
    role = c("aut", "cre"),
    comment = c(ORCID = "0000-0002-8600-5042")
  ),
  Version = "0.0.0.9000"
)
usethis.destdir = "~/Documents/github/"

if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
  # light theme
  rsthemes::set_theme_light("base16 Tomorrow {rsthemes}")
  # dark theme
  rsthemes::set_theme_dark("base16 Gruvbox dark, pale {rsthemes}")


  # Whenever the R session restarts inside RStudio...
  setHook("rstudio.sessionInit", function(isNewSession) {
    # Automatically choose the correct theme based on time of day
    rsthemes::use_theme_auto(dark_start = "20:00", dark_end = "8:00")
  }, action = "append")
}
