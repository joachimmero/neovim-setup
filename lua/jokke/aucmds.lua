local augroup = vim.api.nvim_create_augroup   
local autocmd = vim.api.nvim_create_autocmd   

-- OmniSharp remaps
augroup('OmnisharpRemaps', { clear = true })
autocmd('Filetype', {
  group = 'OmnisharpRemaps',
  pattern = { 'cs' },
  callback = function()
    vim.keymap.set('n', '<leader>gd', '<Plug>(omnisharp_go_to_definition)', {silent = true, buffer = true})
    vim.keymap.set('n', '<leader>fu', '<Plug>(omnisharp_find_usages)', {silent = true, buffer = true})
    vim.keymap.set('n', '<leader>fi', '<Plug>(omnisharp_find_implementations)', {silent = true, buffer = true})
  end
})
