return {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("<Cntr-p>", "󰈞  Find file", ":Telescope find_files<CR>"),
            dashboard.button("<Cntr-Shift-f>", "󰈬  Live grep", ":Telescope live_grep<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

    end
};
