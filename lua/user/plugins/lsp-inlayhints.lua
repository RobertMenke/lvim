local plugin = {
    "lvimuser/lsp-inlayhints.nvim",
    config = function()
        require("lsp-inlayhints").setup({
            inlay_hints = {
                auto = true,
                parameter_hints = {
                    prefix = "<- ",
                    separator = " ",
                    remove_colon_start = true,
                    remove_colon_end = true,
                },
                type_hints = {
                    prefix = "=>",
                    separator = " ",
                    remove_colon_start = true,
                    remove_colon_end = true,
                },
            }
        })

        vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
        vim.api.nvim_create_autocmd("LspAttach", {
            group = "LspAttach_inlayhints",
            callback = function(args)
                if not (args.data and args.data.client_id) then
                    return
                end

                local bufnr = args.buf
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                require("lsp-inlayhints").on_attach(client, bufnr)
            end,
        })
    end
}

return plugin
