require('mappings/alias')

im('<C-k>', '<escape>')
im('(', '()<left>')
im("'", "''<left>")
im('"', '""<left>')
im('<', '<><left>')

nm('<escape>', '<:wq<CR>')
nm('q', '<:q!<CR>')