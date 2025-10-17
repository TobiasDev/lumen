-- Lumen v2 - A grounded, amber-lit workspace theme for deep creative flow
-- Green as earth, amber as light, ivory as breath

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'lumen'

-- Lumen v2 Palette
local colors = {
  -- Core Backgrounds
  bg_primary = '#1B241B',      -- Muted sage shadow
  bg_secondary = '#202C21',    -- Slightly lighter surface
  bg_tertiary = '#161E16',     -- Depth and layering
  bg_active = '#2A3729',       -- Selected/active panel
  bg_inactive = '#121A12',     -- Dimmed, restful layer
  
  -- Core Text
  fg_primary = '#E8E3D1',      -- Warm ivory
  fg_secondary = '#B9B39E',    -- Gentle beige-gray
  fg_muted = '#6C7C6E',        -- Quiet sage tone
  
  -- UI Elements
  border = '#1E281F',          -- Natural separation
  selection = '#334333',       -- Soft moss overlay
  scrollbar = '#465845',       -- Calm sage-gray
  
  -- Semantic Colors
  red_soft = '#E17860',        -- Soft red
  red_strong = '#F05C45',      -- Strong red - errors
  orange_soft = '#E4B463',     -- Soft orange (amber)
  yellow_soft = '#E5C287',     -- Soft yellow
  green_soft = '#98C5A0',      -- Soft green
  cyan_soft = '#9BC9C3',       -- Soft cyan
  
  -- Syntax Colors (Custom hierarchy)
  keyword = '#D8C58E',         -- Balanced ochre
  func = '#BFD5AF',            -- Soft sage-green
  string = '#E5C287',          -- Yellow (Soft)
  number = '#D8B06A',          -- Muted gold
  type = '#D4C99B',            -- Creamy beige
  constant = '#E4B463',        -- Orange (Soft)
  parameter = '#C8BBA2',       -- Neutral tan
  operator = '#A6AF96',        -- Gray-green
  bracket = '#A6AF96',         -- Matches operator
  comment = '#6C7C6E',         -- Text (Muted)
  
  -- State Colors
  error = '#F05C45',           -- Red (STRONG) - never miss
  warning = '#E5C287',         -- Yellow (Soft)
  info = '#9BC9C3',            -- Cyan (Soft)
  success = '#98C5A0',         -- Green (Soft)
  hint = '#B9B39E',            -- Text (Secondary)
  
  -- Git Colors
  git_add = '#98C5A0',         -- Green (Soft)
  git_change = '#E4B463',      -- Orange (Soft)
  git_delete = '#E17860',      -- Red (Soft)
  
  -- Focus & Attention
  cursor = '#E4B463',          -- Orange (Soft)
  accent = '#E4B463',          -- Orange (Soft)
}

-- Helper function
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
hi('CursorLine', { bg = colors.bg_active })
hi('CursorColumn', { bg = colors.bg_active })
hi('LineNr', { fg = colors.fg_muted })
hi('CursorLineNr', { fg = colors.accent, style = 'bold' })
hi('SignColumn', { bg = colors.bg_primary })
hi('ColorColumn', { bg = colors.bg_secondary })
hi('VertSplit', { fg = colors.border })
hi('WinSeparator', { fg = colors.border })
hi('Folded', { fg = colors.fg_secondary, bg = colors.bg_secondary })
hi('FoldColumn', { fg = colors.fg_muted, bg = colors.bg_primary })

-- Statusline & Tabline
hi('StatusLine', { fg = colors.fg_primary, bg = colors.bg_secondary })
hi('StatusLineNC', { fg = colors.fg_muted, bg = colors.bg_inactive })
hi('TabLine', { fg = colors.fg_secondary, bg = colors.bg_secondary })
hi('TabLineFill', { bg = colors.bg_primary })
hi('TabLineSel', { fg = colors.accent, bg = colors.bg_active, style = 'bold' })

-- Pmenu (completion)
hi('Pmenu', { fg = colors.fg_primary, bg = colors.bg_secondary })
hi('PmenuSel', { fg = colors.bg_primary, bg = colors.accent })
hi('PmenuSbar', { bg = colors.scrollbar })
hi('PmenuThumb', { bg = colors.accent })

-- Search & Selection
hi('Search', { fg = colors.fg_primary, bg = colors.selection })
hi('IncSearch', { fg = colors.bg_primary, bg = colors.accent })
hi('Visual', { bg = colors.bg_active })
hi('VisualNOS', { bg = colors.bg_active })

-- Messages
hi('ModeMsg', { fg = colors.accent, style = 'bold' })
hi('MoreMsg', { fg = colors.info })
hi('Question', { fg = colors.info })
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })

-- Syntax
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

-- Treesitter
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

-- Diagnostics
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
hi('TelescopeBorder', { bg = colors.bg_tertiary, fg = colors.border })
hi('TelescopePromptBorder', { bg = colors.bg_tertiary, fg = colors.border })
hi('TelescopeResultsBorder', { bg = colors.bg_tertiary, fg = colors.border })
hi('TelescopePreviewBorder', { bg = colors.bg_tertiary, fg = colors.border })
hi('TelescopeSelection', { fg = colors.accent, bg = colors.selection })
hi('TelescopeSelectionCaret', { fg = colors.cursor })
hi('TelescopeMatching', { fg = colors.accent, style = 'bold' })
hi('TelescopeNormal', { bg = colors.bg_tertiary, fg = colors.fg_primary })

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

-- Terminal colors
vim.g.terminal_color_0 = colors.bg_primary
vim.g.terminal_color_1 = colors.error
vim.g.terminal_color_2 = colors.success
vim.g.terminal_color_3 = colors.warning
vim.g.terminal_color_4 = colors.info
vim.g.terminal_color_5 = colors.accent
vim.g.terminal_color_6 = colors.func
vim.g.terminal_color_7 = colors.fg_primary
vim.g.terminal_color_8 = colors.fg_muted
vim.g.terminal_color_9 = colors.error
vim.g.terminal_color_10 = colors.success
vim.g.terminal_color_11 = colors.warning
vim.g.terminal_color_12 = colors.info
vim.g.terminal_color_13 = colors.accent
vim.g.terminal_color_14 = colors.func
vim.g.terminal_color_15 = colors.fg_primary
