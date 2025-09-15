-- toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 10,                -- ความสูงของ terminal
      open_mapping = [[<c-\>]], -- Ctrl+\ เปิด/ปิด terminal
      direction = 'horizontal', -- terminal split ด้านล่าง
      shade_terminals = true,   
      start_in_insert = true,   
      persist_size = true,      
      close_on_exit = false,    
    }

    local Terminal  = require("toggleterm.terminal").Terminal
    local npm_dev = Terminal:new({ cmd = "npm run dev", hidden = true })

    function _NPM_DEV_TOGGLE()
      npm_dev:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua _NPM_DEV_TOGGLE()<CR>", {noremap = true, silent = true})
  end,
    vim.keymap.set("n", "<leader>gg", function ()
	require("toggleterm.terminal").Terminal:new({
	    cmd = "lazygit",
	    hidden = true,
	    direction = "float",
	}):toggle()
    end, { noremap = true, silent = true})

}
