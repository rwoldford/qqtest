## cran-submit.R
## Final check and CRAN submission for qqtest 1.2.1

expected_package <- "qqtest"
expected_version <- "1.2.1"

## ------------------------------------------------------------------
## 1. Confirm that this is the intended package and version
## ------------------------------------------------------------------

description <- read.dcf("DESCRIPTION")

package_name    <- unname(description[1, "Package"])
package_version <- unname(description[1, "Version"])

stopifnot(
  identical(package_name, expected_package),
  identical(package_version, expected_version)
)

message(
  "Preparing ", package_name,
  " version ", package_version,
  " for CRAN."
)

## ------------------------------------------------------------------
## 2. Regenerate documentation
## ------------------------------------------------------------------

devtools::document()

## ------------------------------------------------------------------
## 3. Run the full CRAN-facing check
##
## The clock variable suppresses only the local failure to contact
## an external clock service.
## ------------------------------------------------------------------

check_result <- withr::with_envvar(
  c("_R_CHECK_SYSTEM_CLOCK_" = "FALSE"),
  devtools::check(
    pkg       = ".",
    cran      = TRUE,
    remote    = TRUE,
    incoming  = TRUE,
    manual    = TRUE,
    vignettes = TRUE,
    error_on  = "note"
  )
)

message("R CMD check completed with no errors, warnings, or notes.")

## ------------------------------------------------------------------
## 4. Display cran-comments.md, when present
## ------------------------------------------------------------------

if (file.exists("cran-comments.md")) {
  cat(
    "\n----- cran-comments.md -----\n\n",
    paste(readLines("cran-comments.md"), collapse = "\n"),
    "\n\n----------------------------\n",
    sep = ""
  )
} else {
  warning("cran-comments.md was not found.")
}

## ------------------------------------------------------------------
## 5. Guard against accidental submission
## ------------------------------------------------------------------

response <- readline(
  paste0(
    "\nType SUBMIT to submit ",
    package_name, " ", package_version,
    " to CRAN: "
  )
)

if (!identical(response, "SUBMIT")) {
  stop("Submission cancelled.")
}

## ------------------------------------------------------------------
## 6. Build and submit through the CRAN web-form process
## ------------------------------------------------------------------

devtools::submit_cran(pkg = ".")