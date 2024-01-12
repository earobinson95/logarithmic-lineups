library(latexdiffr)

# first revision comparison -----------------------

latexdiff(
  "logarithmic-lineups-original.tex",
  "logarithmic-lineups-revisions.tex",
  output = "diff-1",
  open = TRUE,
  clean = TRUE,
  quiet = TRUE,
  output_format = NULL,
  ld_opts = "--replace-context2cmd=\"none\""
)

# in terminal

# latexdiff logarithmic-lineups-revisions.tex logarithmic-lineups-original.tex > diff-1.tex



