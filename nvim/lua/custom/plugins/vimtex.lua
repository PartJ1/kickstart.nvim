return {
  'lervag/vimtex',
  config = function()
    -- VimTeX configuration
    vim.g.tex_flavor = 'latex'
    vim.g.vimtex_view_method = 'zathura' -- Change to your preferred PDF viewer
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_quickfix_enabled = 0

    vim.g.vimtex_compiler_latexmk = {
      build_dir = 'build',
      callback = 1,
      continuous = 1,
      options = {
        '-pdf',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }

    -- Enable conceal feature for better readability
    vim.g.tex_conceal = 'abdmg'
    vim.opt.conceallevel = 1

    -- Enable auto-indentation
    vim.cmd 'filetype plugin indent on'
    vim.cmd 'syntax enable'

    -- UltiSnips configuration
    vim.g.UltiSnipsExpandTrigger = '<tab>'
    vim.g.UltiSnipsJumpForwardTrigger = '<c-j>'
    vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'
  end,
}
