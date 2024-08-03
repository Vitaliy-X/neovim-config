local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
-----------------------------------------------------------
-- Дополнительные
-----------------------------------------------------------
opt.clipboard = 'unnamedplus'         -- Системный буфер обмена
opt.fixeol = false                    -- Дополнение файлов в конце
opt.completeopt = 'menuone,noselect'  -- Автодополнение
vim.o.history = 1000                  -- Последние 1000 команд

-- Запоминает где nvim последний раз редактировал файл
cmd [[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)
