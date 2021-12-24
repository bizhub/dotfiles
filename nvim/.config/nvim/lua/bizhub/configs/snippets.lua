-- local status_ok, ls = pcall(require, 'luasnip')
-- if not status_ok then
--     return
-- end

-- local s = ls.snippet
-- local sn = ls.snippet_node
-- local isn = ls.indent_snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node
-- local events = require("luasnip.util.events")

-- ls.snippets = {
--     php = {
--         s('met', {
--             c(1, {
--                 t('public '),
--                 t('protected '),
--                 t('private '),
--             }),
--             t('function '),
--             i(2),
--             t('('), i(3), t(')'),
--             t('{}')
--         })
--     }
-- }

require('luasnip.loaders.from_vscode').lazy_load({paths = '~/.config/nvim/snippets'})
