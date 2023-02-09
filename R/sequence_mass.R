#' Calculate the mass of a poly amino acid
#'
#' @description
#' `sequence_mass()` get the mass of a poly amino acid
#'
#' @param sequence as character string
#' @param charge an integer
#'
#' @return a vector
#' @export
#'
sequence_mass <- function(
    sequence = NULL,
    charge = 0
){

  if(!is.character(sequence)) { cli::cli_abort("`sequence` must be a character string")}
  if(!is.numeric(charge)) { cli::cli_abort("`charge` must be an integer")}
  charge <- match(charge, 0:50)

  ml <- mass_ladder(sequence)

  mass_proton <- 1.00727646688
  mass_H <- mass_atomic('H')
  mass_O <- mass_atomic('O')

  pep_mass <- (sum(ml) + mass_H * 2 + mass_O + mass_proton) / charge

  return(pep_mass)
}
