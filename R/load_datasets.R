#' Describe available datasets
#'
#' @return vector of available datasets
#' @export
#'
#' @examples
#' taxids_available_lists()
taxids_available_lists <- function(){
  dir_containing_taxid_lists <- system.file(package = "ncbitaxids", "taxid_lists")

  assertthat::assert_that(file.exists(dir_containing_taxid_lists))

  available_taxid_files <- dir(dir_containing_taxid_lists)
  available_taxid_files_no_extension <- tools::file_path_sans_ext(available_taxid_files)
  return(available_taxid_files_no_extension)
}


#' Load a dataset
#'
#' @param taxid_list_to_load a taxid list to load. See available_taxid_files_no_extension for options. (string)
#' @param verbose verbose (boolean)
#'
#' @return vector of taxids
#' @export
#'
#' @examples
#' \dontrun{
#' taxids_load_list()
#' }
taxids_load_list <- function(taxid_list_to_load = NULL, verbose = FALSE){

  if(is.null(taxid_list_to_load)){
    stop(utilitybeltassertions::fmtbold("taxid_list_to_load is null. Please rerun using one of the following taxid lists:\n"),
         utilitybeltassertions::fmtwarning(paste0("\t", taxids_available_lists(), collapse = "\n")))
  }
  assertthat::assert_that(assertthat::is.string(taxid_list_to_load))

  available_taxid_files <- taxids_available_lists()

  assertthat::assert_that(taxid_list_to_load %in% available_taxid_files, msg = utilitybeltassertions::fmterror("taxid_list_to_load [",taxid_list_to_load, "] must be one of ", paste0(available_taxid_files, collapse = ", ") , ","))

  taxid_filename = paste0("taxid_lists/", taxid_list_to_load, ".txt")
  path_to_selected_file = system.file(taxid_filename, package = "ncbitaxids")

  if(verbose){
    message("Reading file from ", path_to_selected_file)
  }
  stats::na.omit(suppressWarnings(as.numeric(readLines(path_to_selected_file))))
  #as.numeric()
}
