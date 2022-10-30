local status, mason = pcall(require, 'mason')
if (not status) then return end

local status, lspconfig = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason.setup()

lspconfig.setup {
    automatic_installation = true
}
lspconfig.setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end
}
