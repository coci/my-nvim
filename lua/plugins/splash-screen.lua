return {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- optional dependency for icons
    config = function()
        require'alpha'.setup(require'alpha.themes.startify'.config)


        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')

        dashboard.section.header.val = {
            [[$$\                                     $$\                 ]],
            [[$$ |                                    $$ |                ]],
            [[$$ |  $$\  $$$$$$\   $$$$$$\  $$\   $$\ $$ |  $$\ $$\   $$\ ]],
            [[$$ | $$  |$$  __$$\ $$  __$$\ $$ |  $$ |$$ | $$  |$$ |  $$ |]],
            [[$$$$$$  / $$ |  \__|$$ /  $$ |$$ |  $$ |$$$$$$  / $$ |  $$ |]],
            [[$$  _$$<  $$ |      $$ |  $$ |$$ |  $$ |$$  _$$<  $$ |  $$ |]],
            [[$$ | \$$\ $$ |      \$$$$$$  |\$$$$$$  |$$ | \$$\ \$$$$$$$ |]],
            [[\__|  \__|\__|       \______/  \______/ \__|  \__| \____$$ |]],
            [[                                                  $$\   $$ |]],
            [[                                                  \$$$$$$  |]],
            [[                                                   \______/ ]],
        }
        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        -- Footer
        dashboard.section.footer.val = "Made with love by Soroush <3"
        -- Apply configuration
        alpha.setup(dashboard.opts)
    end
}
