local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'OmniSharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'dense-analysis/ale'
Plug ('catppuccin/nvim', { as = 'catppuccin' })
Plug ('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug 'nvim-lua/plenary.nvim'
Plug ('nvim-telescope/telescope.nvim', { tag = '0.1.5' })

vim.call('plug#end')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.g.OmniSharp_server_use_mono = 1

vim.g.ale_linters = {
cs = {'OmniSharp'}
}	
