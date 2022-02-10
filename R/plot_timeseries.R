#' Plot time series
#'
#' @param x numeric vector of length 7
#'
#' @return ggplot2 object
#' @export
#'
#' @examples
#' @importFrom rlang .data
plot_timeseries <- function(x) {
  tibble::tibble(year = testpackage::default_years, value = x) |>
    ggplot2::ggplot(ggplot2::aes(.data$year, .data$value)) +
    ggplot2::geom_line(colour = "blue")
}
