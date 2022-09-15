local o = vim.o
local wo = vim.wo
local opt = vim.opt
local cmd = vim.cmd
local glo = vim.g

-- GENERAL SETTINGS
wo.number = true
o.clipboard = "unnamedplus"
o.splitright = true
o.hidden = true
--o.lazyredraw = true
o.relativenumber = true
o.mouse = "a"
o.showcmd = true
o.ruler = true
o.encoding="utf-8"
o.syntax = "enable"
o.showmatch = true
o.cursorline = true
o.tabstop=2
o.shiftwidth=2
o.expandtab = true
--vim.opt.dictionary:append("C:\\Users\\SERGIOESTRADAVALENZU\\Documents\\GitHub\\sergioeval\\nvim_files_config_windows\\htmlTags.txt")
--opt.dictionary:append("C:\\Users\\SERGIOESTRADAVALENZU\\AppData\\Local\\nvim\\lua\\htmlTags.txt")
--opt.iskeyword:append("<")
--opt.iskeyword:append(">")
--opt.iskeyword:append("/")
--opt.iskeyword:append(".")
--vim.opt.iskeyword:append("-")

--plugin color scheme option 
cmd("colorscheme gruvbox")
--cmd("colorscheme onedark")

-- NERDTree settings
glo.NERDTreeQuitOnOpen = 1
glo.NERDTreeShowHidden=1

-- python env 
glo.python3_host_prog = "C:\\Python39\\python.exe"

-- indent config 
opt.list = true
opt.listchars:append "eol:↴"
opt.listchars:append "space:⋅"
opt.termguicolors = true
cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
