return require('packer').startup(function()
	--packer can manage it self
	use 'wbthomason/packer.nvim'

	-- gruvbox
  -- Color Schemes
	use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'

	--NERDTre
	--use 'preservim/nerdtree'
	
	--nerdtree tree
	use 'preservim/nerdtree'
	-- coc
  use { 'neoclide/coc.nvim', branch='release' }

  -- light line 
  use 'itchyny/lightline.vim'

  -- indent lines 
  --use 'nathanaelkane/vim-indent-guides'
  use "lukas-reineke/indent-blankline.nvim"

end)
