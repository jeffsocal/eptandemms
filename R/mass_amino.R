#' the mass of each amino acid
#' @description `mass_amino()` mass of a given amino acid
#' @return a numeric
mass_amino <- function(x) {
  switch (x,
  'A' = 71.0371,
  'R' = 156.1011,
  'N' = 114.0429,
  'D' = 115.0269,
  'C' = 103.0092,
  'E' = 129.0426,
  'Q' = 128.0586,
  'G' = 57.0215,
  'H' = 137.0589,
  'O' = 113.0477,
  'I' = 113.0841,
  'L' = 113.0841,
  'K' = 128.095,
  'M' = 131.0405,
  'F' = 147.0684,
  'P' = 97.0528,
  'U' = 111.032,
  'S' = 87.032,
  'T' = 101.0477,
  'W' = 186.0793,
  'Y' = 163.0633,
  'V' = 99.0684,
  NULL)
}
