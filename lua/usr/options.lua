local options = {
	fileencoding = 'utf-8',

	-- Indent
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,

	-- Line numbers
	number = true,
	relativenumber = false,
	signcolumn = 'no',

    -- Completion box pop-up size
    pumheight = 12,
    pumwidth = 60,

    -- Disable swap
    swapfile = false,
}

for key, val in pairs(options) do
	vim.opt[key] = val
end
