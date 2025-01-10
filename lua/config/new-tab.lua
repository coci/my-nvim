function _G.go_to_definition_in_tab()
    local params = vim.lsp.util.make_position_params()
    vim.lsp.buf_request(0, 'textDocument/definition', params, function(err, result, ctx, _)
        if err or not result or vim.tbl_isempty(result) then
            vim.notify('Definition not found', vim.log.levels.WARN)
            return
        end

        -- Handle single and multiple results
        if vim.tbl_islist(result) then
            result = result[1]
        end

        local uri = result.uri or result.targetUri
        local range = result.range or result.targetSelectionRange
        local bufnr = vim.uri_to_bufnr(uri)

        -- Open file in a new tab
        vim.cmd('tabnew ' .. vim.uri_to_fname(uri))
        vim.api.nvim_set_current_buf(bufnr)

        -- Jump to the location
        local start = range.start
        vim.api.nvim_win_set_cursor(0, { start.line + 1, start.character })
    end)
end

