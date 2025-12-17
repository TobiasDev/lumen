-- Lumen v3 - A grounded, amber-lit workspace theme for deep creative flow
-- Green as earth, amber as light, ivory as breath

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'lumen'

-- Updated Lumen v3 - softer, calmer, less harsh
local colors = {
  -- Core Backgrounds
  bg_primary = '#252E25',      -- lighter, softer sage shadow
  bg_secondary = '#2B362B',    -- subtle contrast for panels
  bg_tertiary = '#1E261E',     -- depth layers
  bg_active = '#37483A',       -- active selection, soft moss
  bg_inactive = '#1A211A',     -- restful dimmed layer
  
  -- Core Text
  fg_primary = '#EAE6D5',      -- slightly softer ivory
  fg_secondary = '#C0BCA5',    -- warmer beige-gray
  fg_muted = '#8A9A88',        -- softer sage for comments
  
  -- UI Elements
  border = '#2C3A2C',          -- gentler separation
  selection = '#4A5A49',       -- soft moss highlight
  scrollbar = '#5C6B5A',       -- calm sage-gray
  
  -- Semantic Colors
  red_soft = '#E3947D',        -- softer red
  red_strong = '#F1735D',      -- errors
  orange_soft = '#E7B77A',     -- amber, slightly less saturated
  yellow_soft = '#ECD2A5',     -- softer warm yellow
  green_soft = '#A3C9A9',      -- soft green
  cyan_soft = '#A2D1CC',       -- soft cyan
  blue_soft = '#AAC0C9',       -- optional soft blue
  purple_soft = '#C2B2D1',     -- soft lavender
  
  -- Syntax Colors
  keyword = '#E0D0A0',         -- ochre, softer
  func = '#C3D9B7',            -- soft sage-green
  string = '#ECD2A5',          -- yellow soft
  number = '#DAB77F',          -- muted gold
  type = '#D8CFB0',            -- creamy beige
  constant = '#E7B77A',        -- orange soft
  parameter = '#CBC0A8',       -- neutral tan
  operator = '#ABB59E',        -- gray-green
  bracket = '#ABB59E',           -- matches operator
  comment = '#8A9A88',         -- muted sage
  
  -- State Colors
  error = '#F1735D',           -- strong red
  warning = '#ECD2A5',         -- soft yellow
  info = '#A2D1CC',            -- soft cyan
  success = '#A3C9A9',         -- soft green
  hint = '#C0BCA5',            -- secondary text
  
  -- Git Colors
  git_add = '#A3C9A9',         -- green soft
  git_change = '#E7B77A',      -- orange soft
  git_delete = '#E3947D',      -- red soft
  
  -- Focus & Attention
  cursor = '#E7B77A',          -- amber
  accent = '#E7B77A',          -- amber
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



-- Markdown
hi('markdownH1', { fg = colors.keyword, style = 'bold' })
hi('markdownH2', { fg = colors.keyword })
hi('markdownH3', { fg = colors.type })
hi('markdownH4', { fg = colors.fg_primary })
hi('markdownH5', { fg = colors.fg_secondary })
hi('markdownH6', { fg = colors.fg_muted })

hi('markdownHeadingDelimiter', { fg = colors.operator })

hi('markdownBold', { fg = colors.fg_primary, style = 'bold' })
hi('markdownItalic', { fg = colors.fg_secondary, style = 'italic' })
hi('markdownBoldItalic', { fg = colors.fg_primary, style = 'bold,italic' })

hi('markdownBlockquote', { fg = colors.fg_secondary, style = 'italic' })

hi('markdownCode', { fg = colors.accent })
hi('markdownCodeBlock', { fg = colors.accent })
hi('markdownCodeDelimiter', { fg = colors.accent })

hi('markdownListMarker', { fg = colors.operator })
hi('markdownOrderedListMarker', { fg = colors.operator })

hi('markdownRule', { fg = colors.border })

hi('markdownLinkText', { fg = colors.accent })
hi('markdownUrl', { fg = colors.fg_muted, style = 'italic' })
hi('markdownLinkDelimiter', { fg = colors.operator })

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
