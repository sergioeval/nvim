local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

mapper("n", "<Leader>w", ":w<CR>")
mapper("n", "<Leader>q", ":q<CR>")

--NerdTree
mapper("n", "<Leader>nt", ":NERDTreeToggle<CR>")

-- coc config
mapper("n", "gd", ":call CocActionAsync('jumpDefinition')<CR>")
mapper("n", "gy", ":call CocActionAsync('jumpTypeDefinition')<CR>")
mapper("n", "gi", ":call CocActionAsync('jumpImplementation')<CR>")
mapper("n", "gr", ":call CocActionAsync('jumpReference')<CR>")

--open init.lua 
mapper("n", "<Leader>li", ":e ~/.config/nvim/init.lua<CR>")
mapper("n", "<Leader>lm", ":e ~/.config/nvim/lua/keymappings.lua<CR>")
mapper("n", "<Leader>ls", ":e ~/.config/nvim/lua/settings.lua<CR>")
mapper("n", "<Leader>lp", ":e ~/.config/nvim/lua/packer-plugins.lua<CR>")
