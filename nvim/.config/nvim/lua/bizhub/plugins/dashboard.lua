-- https://github.com/glepnir/dashboard-nvim

local db = require('dashboard')

-- g.dashboard_disable_at_vimenter = 0
-- g.dashboard_disable_statusline = 1
-- g.dashboard_default_executive = 'telescope'
db.custom_header = {
"     _                      _______                      _",
"  _dMMMb._              .adOOOOOOOOOba.              _,dMMMb_",
" dP'  ~YMMb            dOOOOOOOOOOOOOOOb            aMMP~  `Yb",
" V      ~\"Mb          dOOOOOOOOOOOOOOOOOb          dM\"~      V",
"          `Mb.       dOOOOOOOOOOOOOOOOOOOb       ,dM'",
"           `YMb._   |OOOOOOOOOOOOOOOOOOOOO|   _,dMP'",
"      __     `YMMM| OP'~\"YOOOOOOOOOOOP\"~`YO |MMMP'     __",
"    ,dMMMb.     ~~' OO     `YOOOOOP'     OO `~~     ,dMMMb.",
" _,dP~  `YMba_      OOb      `OOO'      dOO      _aMMP'  ~Yb._",
"",
"             `YMMMM\\`OOOo     OOO     oOOO'/MMMMP'",
"     ,aa.     `~YMMb `OOOb._,dOOOb._,dOOO'dMMP~'       ,aa.",
"   ,dMYYMba._         `OOOOOOOOOOOOOOOOO'          _,adMYYMb.",
"  ,MP'   `YMMba._      OOOOOOOOOOOOOOOOO       _,adMMP'   `YM.",
"  MP'        ~YMMMba._ YOOOOPVVVVVYOOOOP  _,adMMMMP~       `YM",
"  YMb           ~YMMMM\\`OOOOI`````IOOOOO'/MMMMP~           dMP",
"   `Mb.           `YMMMb`OOOI,,,,,IOOOO'dMMMP'           ,dM'",
"     `'                  `OObNNNNNdOO'                   `'",
"                           `~OOOOO~'",
}

db.custom_center = {
    { icon = '  ', desc = 'New file                       ', action = 'enew' },
    { icon = '  ', shortcut = 'SPC f', desc = 'Find file                 ', action = 'Telescope find_files' },
    { icon = '  ', shortcut = 'SPC h', desc = 'Recent files              ', action = 'Telescope oldfiles' },
    { icon = '  ', shortcut = 'SPC g', desc = 'Find Word                 ', action = 'Telescope live_grep' },
  }

db.custom_footer = { '' }

vim.cmd([[
  augroup DashboardHighlights
    autocmd ColorScheme * highlight DashboardHeader guifg=#6272a4
    autocmd ColorScheme * highlight DashboardCenter guifg=#f8f8f2
    autocmd ColorScheme * highlight DashboardShortcut guifg=#bd93f9
    autocmd ColorScheme * highlight DashboardFooter guifg=#6272a4
  augroup end
]])