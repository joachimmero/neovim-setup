local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'OmniSharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'dense-analysis/ale'
Plug ('catppuccin/nvim', { as = 'catppuccin' })
Plug ('folke/tokyonight.nvim', { as = 'tokyonight' })
Plug ('rebelot/kanagawa.nvim', { as = 'kanagawa' })
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.5' })

vim.call('plug#end')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.g.OmniSharp_server_use_mono = 1
vim.g.OmniSharp_server_use_net6 = 1
vim.g.Omnisharp_popup = 1
vim.g.Omnisharp_selector_findusages = 'fzf'

vim.g.ale_sign_error = '•'
vim.g.ale_sign_warning = '•'
vim.g.ale_sign_info = '·'
vim.g.ale_sign_style_error = '·'
vim.g.ale_sign_style_warning = '·'

vim.g.ale_linters = {
cs = {'OmniSharp'}
}

vim.cmd [[colorscheme tokyonight]]
