local map = vim.api.nvim_set_keymap 


--Метод для установки горячих клавиш (normal)
function nm(key, command) 
	map('n', key, command, {noremap = true})
end

--Метод для установки горячих клавиш (input)
function im(key, command)
	map('i', key, command, {noremap = true})
end

--Метод для установки горячих клавиш (visual)
function vm(key, command)
	map('v', key, command, {noremap = true})
end

--Метод для установки горячих клавиш (terminal)
function tm(key, command)
	map('t', key, command, {noremap = true})
end
