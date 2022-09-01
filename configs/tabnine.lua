local M = {}

M.tabnine = function()
  return {
    max_lines = 1000,
    max_num_results = 5,
    sort = true,
    run_on_every_keystroke = true,
    show_prediction_strength = false
  }
end

return M
