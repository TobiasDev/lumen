-- Lumen - A theme for deep work, lit by natural warmth
-- Built for long creative sessions in calm focus

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'Lumen'

-- Lumen Palette
local colors = {
  -- Core Backgrounds
  bg_primary = '#111d14',
  bg_secondary = '#141c16',
  bg_tertiary = '#141e0c',
  bg_active = '#1E2C1F',
  bg_inactive = '#0E160F',
  
  -- Core Text
  fg_primary = '#E6E1CF',
  fg_secondary = '#B3AD9A',
  fg_muted = '#5C705E',
  
  -- UI Elements
  border = '#1a241a',
  selection = '#2A3729',
  active_item = '#E5A94D',
  scrollbar = '#415540',
  menu_bg = '#142016',
  status_bar = '#1A241A',
  line_number = '#677A69',
  cursor_line = '#202E20',

  
  -- Syntax Colors
  keyword = '#bdd496',
  func = '#83ae83',
  string = '#E8C48F',
  number = '#D8B06A',
  type = '#D4C99B',
  constant = '#E5A94D',
  parameter = '#C9B89C',
  operator = '#9FAA88',
  bracket = '#9FAA88',
  comment = '#5C705E',
  
  -- State Colors
  error = '#E16C5B',
  warning = '#E5A94D',
  info = '#B8C7AF',
  success = '#A3C5A5',
  hint = '#C9C2AA',
  
  -- Git Colors
  git_add = '#A3C5A5',
  git_change = '#E5A94D',
  git_delete = '#E16C5B',
  
  -- Focus & Attention
  cursor = '#FFD67C',
  search = '#3E4E3D',
  visual = '#2A3729',
  accent = '#E5A94D',
  
  -- Strong Signals
  strong_warning = '#E5A94D',
  strong_error = '#E16C5B',
  strong_success = '#78A67E',
  strong_general = '#B89D6C',
}

-- Helper function for setting highlights
local function hi(group, opts)
  local cmd = 'hi ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  if opts.style then cmd = cmd .. ' gui=' .. opts.style end
  vim.cmd(cmd)
end

-- Editor UI
hi('Normal', { fg = colors.fg_primary, bg = colors.bg_primary })
hi('NormalFloat', { fg = colors.fg_primary, bg = colors.bg_secondary })
hi('NormalNC', { fg = colors.fg_primary, bg = colors.bg_primary })
hi('Cursor', { fg = colors.bg_primary, bg = colors.cursor })
hi('CursorLine', { bg = colors.cursor_line })
hi('CursorColumn', { bg = colors.bg_active })
hi('LineNr', { fg = colors.line_number })
hi('CursorLineNr', { fg = colors.accent, style = 'bold' })
hi('SignColumn', { bg = colors.bg_primary })
hi('ColorColumn', { bg = colors.bg_secondary })
hi('VertSplit', { fg = colors.border })
hi('WinSeparator', { fg = colors.border })
hi('Folded', { fg = colors.fg_secondary, bg = colors.bg_secondary })
hi('FoldColumn', { fg = colors.fg_muted, bg = colors.bg_primary })

-- Statusline & Tabline
hi('StatusLine', { fg = colors.fg_primary, bg = colors.status_bar })
hi('StatusLineNC', { fg = colors.fg_muted, bg = colors.bg_inactive })
hi('TabLine', { fg = colors.fg_secondary, bg = colors.bg_secondary })
hi('TabLineFill', { bg = colors.bg_primary })
hi('TabLineSel', { fg = colors.accent, bg = colors.bg_active, style = 'bold' })

-- Pmenu (completion menu)
hi('Pmenu', { fg = colors.fg_primary, bg = colors.menu_bg })
hi('PmenuSel', { fg = colors.bg_primary, bg = colors.accent })
hi('PmenuSbar', { bg = colors.scrollbar })
hi('PmenuThumb', { bg = colors.active_item })

-- Search & Selection
hi('Search', { fg = colors.fg_primary, bg = colors.search })
hi('IncSearch', { fg = colors.bg_primary, bg = colors.accent })
hi('Visual', { bg = colors.visual })
hi('VisualNOS', { bg = colors.visual })

-- Messages & Command Line
hi('ModeMsg', { fg = colors.accent, style = 'bold' })
hi('MoreMsg', { fg = colors.info })
hi('Question', { fg = colors.info })
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })

-- Syntax Highlighting
hi('Comment', { fg = colors.comment, style = 'italic' })
hi('Constant', { fg = colors.constant })
hi('String', { fg = colors.string })
hi('Character', { fg = colors.string })
hi('Number', { fg = colors.number })
hi('Boolean', { fg = colors.constant })
hi('Float', { fg = colors.number })

hi('Identifier', { fg = colors.fg_primary })
hi('Function', { fg = colors.func })

hi('Statement', { fg = colors.keyword })
hi('Conditional', { fg = colors.keyword })
hi('Repeat', { fg = colors.keyword })
hi('Label', { fg = colors.keyword })
hi('Operator', { fg = colors.operator })
hi('Keyword', { fg = colors.keyword })
hi('Exception', { fg = colors.keyword })

hi('PreProc', { fg = colors.keyword })
hi('Include', { fg = colors.keyword })
hi('Define', { fg = colors.keyword })
hi('Macro', { fg = colors.keyword })
hi('PreCondit', { fg = colors.keyword })

hi('Type', { fg = colors.type })
hi('StorageClass', { fg = colors.keyword })
hi('Structure', { fg = colors.type })
hi('Typedef', { fg = colors.type })

hi('Special', { fg = colors.accent })
hi('SpecialChar', { fg = colors.accent })
hi('Tag', { fg = colors.accent })
hi('Delimiter', { fg = colors.bracket })
hi('SpecialComment', { fg = colors.comment, style = 'italic' })
hi('Debug', { fg = colors.error })

hi('Underlined', { style = 'underline' })
hi('Ignore', { fg = colors.fg_muted })
hi('Error', { fg = colors.error })
hi('Todo', { fg = colors.warning, style = 'bold' })

-- Treesitter Syntax
hi('@parameter', { fg = colors.parameter })
hi('@variable', { fg = colors.fg_primary })
hi('@variable.builtin', { fg = colors.constant })
hi('@constant', { fg = colors.constant })
hi('@constant.builtin', { fg = colors.constant })
hi('@function', { fg = colors.func })
hi('@function.builtin', { fg = colors.func })
hi('@function.macro', { fg = colors.keyword })
hi('@method', { fg = colors.func })
hi('@keyword', { fg = colors.keyword })
hi('@keyword.function', { fg = colors.keyword })
hi('@keyword.operator', { fg = colors.operator })
hi('@keyword.return', { fg = colors.keyword })
hi('@operator', { fg = colors.operator })
hi('@type', { fg = colors.type })
hi('@type.builtin', { fg = colors.type })
hi('@type.qualifier', { fg = colors.keyword })
hi('@string', { fg = colors.string })
hi('@string.escape', { fg = colors.accent })
hi('@number', { fg = colors.number })
hi('@boolean', { fg = colors.constant })
hi('@comment', { fg = colors.comment, style = 'italic' })
hi('@punctuation.bracket', { fg = colors.bracket })
hi('@punctuation.delimiter', { fg = colors.operator })
hi('@tag', { fg = colors.accent })
hi('@tag.attribute', { fg = colors.parameter })
hi('@tag.delimiter', { fg = colors.bracket })

-- LSP Semantic Tokens
hi('@lsp.type.class', { fg = colors.type })
hi('@lsp.type.decorator', { fg = colors.accent })
hi('@lsp.type.enum', { fg = colors.type })
hi('@lsp.type.enumMember', { fg = colors.constant })
hi('@lsp.type.function', { fg = colors.func })
hi('@lsp.type.interface', { fg = colors.type })
hi('@lsp.type.macro', { fg = colors.keyword })
hi('@lsp.type.method', { fg = colors.func })
hi('@lsp.type.namespace', { fg = colors.type })
hi('@lsp.type.parameter', { fg = colors.parameter })
hi('@lsp.type.property', { fg = colors.fg_primary })
hi('@lsp.type.struct', { fg = colors.type })
hi('@lsp.type.type', { fg = colors.type })
hi('@lsp.type.typeParameter', { fg = colors.parameter })
hi('@lsp.type.variable', { fg = colors.fg_primary })

-- Diagnostic
hi('DiagnosticError', { fg = colors.error })
hi('DiagnosticWarn', { fg = colors.warning })
hi('DiagnosticInfo', { fg = colors.info })
hi('DiagnosticHint', { fg = colors.hint })
hi('DiagnosticUnderlineError', { sp = colors.error, style = 'undercurl' })
hi('DiagnosticUnderlineWarn', { sp = colors.warning, style = 'undercurl' })
hi('DiagnosticUnderlineInfo', { sp = colors.info, style = 'undercurl' })
hi('DiagnosticUnderlineHint', { sp = colors.hint, style = 'undercurl' })

-- Git Signs
hi('GitSignsAdd', { fg = colors.git_add })
hi('GitSignsChange', { fg = colors.git_change })
hi('GitSignsDelete', { fg = colors.git_delete })

-- Telescope
hi('TelescopeBorder', { fg = colors.border })
hi('TelescopePromptBorder', { fg = colors.border })
hi('TelescopeResultsBorder', { fg = colors.border })
hi('TelescopePreviewBorder', { fg = colors.border })
hi('TelescopeSelection', { fg = colors.accent, bg = colors.selection })
hi('TelescopeSelectionCaret', { fg = colors.accent })
hi('TelescopeMatching', { fg = colors.accent, style = 'bold' })

-- NvimTree
hi('NvimTreeNormal', { fg = colors.fg_primary, bg = colors.bg_secondary })
hi('NvimTreeFolderName', { fg = colors.fg_primary })
hi('NvimTreeFolderIcon', { fg = colors.accent })
hi('NvimTreeRootFolder', { fg = colors.accent, style = 'bold' })
hi('NvimTreeSymlink', { fg = colors.info })
hi('NvimTreeExecFile', { fg = colors.success })
hi('NvimTreeOpenedFile', { fg = colors.accent })
hi('NvimTreeGitDirty', { fg = colors.git_change })
hi('NvimTreeGitNew', { fg = colors.git_add })
hi('NvimTreeGitDeleted', { fg = colors.git_delete })

-- @TODO: These still need to be converted I think
-- Diff Highlighting
hi('DiffAdd', { fg = colors.git_add, bg = colors.bg_tertiary })
hi('DiffChange', { fg = colors.git_change, bg = colors.bg_tertiary })
hi('DiffDelete', { fg = colors.git_delete, bg = colors.bg_tertiary })
hi('DiffText', { fg = colors.fg_primary, bg = colors.selection })




-- Terminal
vim.g.terminal_color_0 = colors.bg_primary
vim.g.terminal_color_1 = colors.error
vim.g.terminal_color_2 = colors.success
vim.g.terminal_color_3 = colors.warning
vim.g.terminal_color_4 = colors.info
vim.g.terminal_color_5 = colors.accent
vim.g.terminal_color_6 = colors.func
vim.g.terminal_color_7 = colors.fg_primary
vim.g.terminal_color_8 = colors.fg_muted
vim.g.terminal_color_9 = colors.strong_error
vim.g.terminal_color_10 = colors.strong_success
vim.g.terminal_color_11 = colors.strong_warning
vim.g.terminal_color_12 = colors.info
vim.g.terminal_color_13 = colors.accent
vim.g.terminal_color_14 = colors.func
vim.g.terminal_color_15 = colors.fg_primary
