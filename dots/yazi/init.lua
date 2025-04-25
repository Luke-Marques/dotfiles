-- DuckDB plugin configuration
require("duckdb"):setup({
  mode = "standard",
  row_id = "dynamic",
})

-- Restore (delete undo using trash-cli)
require("restore")
