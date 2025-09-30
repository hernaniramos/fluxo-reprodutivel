dirs <- c(
  "data/raw", "data/processed",
  "scripts",
  "outputs/figuras", "outputs/tabelas", "outputs/logs",
  "docs"
)
for (d in dirs) if (!dir.exists(d)) dir.create(d, recursive = TRUE, showWarnings = FALSE)

# Arquivos úteis
if (!file.exists(".gitignore")) writeLines(c(
  ".Rhistory", ".RData", ".Rproj.user", ".Renviron", "outputs/logs/", "data/processed/*.rds"
), ".gitignore")

if (!file.exists("README.md")) writeLines("# Prática — Fluxo Reprodutível (Dia 03)\n", "README.md")