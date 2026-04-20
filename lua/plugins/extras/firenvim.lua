return {
	"glacambre/firenvim",
	build = ":call firenvim#install(0)",
	init = function()
		vim.g.firenvim_config = {
    globalSettings = { alt = "all" },
    localSettings = {
        [".*"] = {
            -- cmdline  = "neovim",
            -- content  = "text",
            -- priority = 0,
            -- selector = "textarea",
            takeover = "never"
        }
    }
}
	end,

}
