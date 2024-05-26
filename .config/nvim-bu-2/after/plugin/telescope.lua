local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pg', builtin.find_files, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})


vim.keymap.set('n', '<leader>P', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {})


vim.keymap.set('n', '<leader>ps', function()
	bultin.grep_string({search = vim.fn.input("Grep > ")});
end)
