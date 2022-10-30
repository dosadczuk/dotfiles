local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local actions_fb = require 'telescope'.extensions.file_browser.actions

telescope.setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        }
    },
    extensions = {
        file_browser = {
            theme = 'dropdown',
            hijack_netrw = {
                ['i'] = {
                    ['<C-w>'] = function() vim.cmd('normal vbd') end
                },
                ['n'] = {
                    ['N'] = actions_fb.create,
                    ['h'] = actions_fb.goto_parent_dir,
                    ['/'] = function() 
                        vim.cmd('startinsert')
                    end
                }
            }
        }
    }
}

telescope.load_extension('file_browser')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
vim.keymap.set('n', ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', '\\\\', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
vim.keymap.set('n', ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
vim.keymap.set('n', ';;', '<cmd>lua require("telescope.builtin").resume()<cr>', opts)
