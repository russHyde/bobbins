#'
block_sizes <- function(files, mode = c("tokens", "lines")) {
  # rather than choose between tokens and lines, return a data-frame containing
  # number of (non-trivial) tokens and number of (non-comment / non-whitespace)
  # lines of code
  tokens <- dupree:::preprocess_code_blocks(files, min_block_size = 0)
  tokens@blocks[, c("file", "block", "start_line", "block_size")] %>%
    dplyr::mutate(n_tokens = block_size)
}
