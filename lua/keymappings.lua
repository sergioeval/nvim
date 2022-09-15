local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

-- my keys general
mapper("n", "<Leader>w", ":w<CR>")
mapper("n", "<Leader>q", ":q<CR>")
mapper("i", "''", "''<left>")
mapper('i', '""', '""<left>')
mapper("i", "()", "()<left>")
mapper("i", "{}", "{}<left>")
mapper("i", "[]", "[]<left>")

-- HTML Tags function 
function hello(texto)
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. texto .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end

function countrySelect()
  vim.ui.select({ 
      "<table></table>",
      "<thead></thead>",
      "<tbody></tbody>",
      "<tr></tr>",
      "<th></th>",
      "<td></td>",
      "<h1></h1>", 
      "<h2></h2>", 
      "<h3></h3>", 
      "<h4></h4>", 
      "<div></div>",
      '<a class="" href=""></a>',
      "<form></form>", 
      "<ul></ul>",
      "<ol></ol>",
      "<li></li>",
      '<link rel="stylesheet" href="css/style.css">',
      '<span class=""></span>',
      "<input/>",
      "<button></button>",
      "<p></p>",
      "<nav></nav>",
      "<React.Fragment></React.Fragment>",
      "<Fragment></Fragment>",
      "<section></section>",
      '<img src="" alt=""></section>',
    }, {
    prompt = "Select a Tag",
    format_item = function(item)
      return item
    end,
  }, function(country, idx)
    if country then
      hello(country)
    else
      print "You cancelled"
    end
  end)
end

mapper("i", "tg", "<cmd>lua countrySelect()<CR>")



--NerdTree
mapper("n", "<Leader>nt", ":NERDTreeToggle<CR>")

-- coc config
mapper("n", "gd", ":call CocActionAsync('jumpDefinition')<CR>")
mapper("n", "gy", ":call CocActionAsync('jumpTypeDefinition')<CR>")
mapper("n", "gi", ":call CocActionAsync('jumpImplementation')<CR>")
mapper("n", "gr", ":call CocActionAsync('jumpReference')<CR>")

--open init.lua 
mapper("n", "<Leader>li", ":e ~/AppData/Local/nvim/init.lua<CR>")
mapper("n", "<Leader>lm", ":e ~/AppData/Local/nvim/lua/keymappings.lua<CR>")
mapper("n", "<Leader>ls", ":e ~/AppData/Local/nvim/lua/settings.lua<CR>")
mapper("n", "<Leader>lp", ":e ~/AppData/Local/nvim/lua/packer-plugins.lua<CR>")
