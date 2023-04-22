local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  --   -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
    ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
  },
  --   -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

lvim.builtin.telescope.pickers.live_grep = {
  on_input_filter_cb = function(prompt)
    -- if prompt starts with escaped @ then treat it as a literal
    if (prompt):sub(1, 2) == '\\@' then
      return { prompt = prompt:sub(2) }
    end
    -- if prompt starts with, for example, @rs
    -- only search files that end in *.rs
    local result = string.match(prompt, '@%a*%s')
    if not result then
      return {
        prompt = prompt,
        updated_finder = require('telescope.finders').new_job(function(new_prompt)
          return vim.tbl_flatten({
            require('telescope.config').values.vimgrep_arguments,
            '--',
            new_prompt,
          })
        end, require('telescope.make_entry').gen_from_vimgrep({}), nil, nil),
      }
    end

    local result_len = #result

    result = result:sub(2)
    result = vim.trim(result)

    if result == 'js' or result == 'ts' then
      result = string.format('{%s,%sx}', result, result)
    end

    return {
      prompt = prompt:sub(result_len + 1),
      updated_finder = require('telescope.finders').new_job(function(new_prompt)
        return vim.tbl_flatten({
          require('telescope.config').values.vimgrep_arguments,
          string.format('-g*.%s', result),
          '--',
          new_prompt,
        })
      end, require('telescope.make_entry').gen_from_vimgrep({}), nil, nil),
    }
  end,
}

lvim.builtin.telescope.defaults.file_ignore_patterns = { ".cargo", ".git", "vendor", "node_modules" }
