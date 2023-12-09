local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-c>', builtin.git_commits, {})
vim.keymap.set('n', '<C-b>', builtin.git_branches, {})
vim.keymap.set('n', '<C-s>', function()
	builtin.grep_string({ search = vim.fn.input("rg > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


require('telescope').load_extension('definitions')
