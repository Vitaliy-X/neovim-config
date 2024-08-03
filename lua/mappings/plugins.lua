require('mappings/alias')


vim.g.mapleader = ' '

-- LSP (все горячие клавиши начинаются с g)
nm('gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')                 -- Форматировать документ
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                -- Действия с кодом
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                     -- Переименовать объект

-- Отркыть NvimTree
nm('<leader>v', '<cmd>:NvimTreeToggle<CR>')

-- Telescope
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                     -- Объявления в LSP
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                     -- Просмотр недавних файлов
nm('<leader>o', '<cmd>Telescope find_files<CR>')                   -- Поиск файлов
nm('<leader>b', '<cmd>Telescope git_branches<CR>')                 -- Ветки в Git
nm('<leader>f', '<cmd>Telescope live_grep<CR>')                    -- Поиск строки
nm('<leader>q', '<cmd>Telescope buffers<CR>')                      -- Буфферы

-- Trouble
nm('<leader>x', '<cmd>checkhealth<CR>')                           -- Открыть меню с проблемами
nm('gr', '<cmd>Trouble lsp_references<CR>')                       -- Референсы в LSP