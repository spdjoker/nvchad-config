-- Thanks to original theme for existing https://github.com/microsoft/vscode/blob/main/extensions/theme-defaults/themes/dark_plus.json
-- this is a modified version of it

local M = {}

M.base_30 = {
  white = "#d4d4d5",
  darker_black = "#0a0d11",
  black = "#101317",   --  nvim bg
  black2 = "#191d22",
  one_bg = "#212428",
  one_bg2 = "#292c30",
  one_bg3 = "#33363a",
  grey = "#3e4145",
  grey_fg = "#45484c",
  grey_fg2 = "#4a4d51",
  light_grey = "#525559",
  red = "#D16969",
  baby_pink = "#ea696f",
  pink = "#bb7cb6",
  line = "#30303a",   -- for lines like vertsplit
  green = "#37d993",
  green1 = "#3bdda2",
  vibrant_green = "#7ABB66",
  blue = "#569CD6",
  nord_blue = "#60a6e0",
  yellow = "#E7CA4D",
  sun = "#e1c487",
  purple = "#c68aee",
  dark_purple = "#b77bdf",
  teal = "#4294D6",
  orange = "#d3967d",
  cyan = "#9CDCFE",
  statusline_bg = "#15191e",
  lightbg = "#24292d",
  pmenu_bg = "#3bdda2",
  folder_bg = "#5fb0fc",
}

M.base_16 = {
  --author of this template Tomas Iser, @tomasiser on github,
  base00 = "#101317",
  base01 = "#1a1d21",
  base02 = "#23262a",
  base03 = "#2b2e32",
  base04 = "#323539",
  base05 = "#c5c5c6",
  base06 = "#cbcbcc",
  base07 = "#d4d4d5",
  base08 = "#9CDCFE",
  base09 = "#B5CEA8",
  base0A = "#569CD6",
  base0B = "#BD8D78",
  base0C = "#BD8D78",
  base0D = "#DCDCAA",
  base0E = "#C586C0",
  base0F = "#E9E9E9",
}

M.polish_hl = {
  -- base46/integrations/syntax.lua
  Boolean = { fg = M.base_30.blue },         -- [ true | false ]
  -- Character = { fg = M.base_16.base0B },               ??
  Conditional = { fg = M.base_16.base0E },   -- [ if | if else | else | condition ? true : false ]
  -- Constant = { fg = M.base_30.red },                   ??
  Define = { fg = "#959595" },               -- #define
  -- Delimiter = { fg = M.base_30.red },                  ??
  -- Float = {fg = M.base_30.red },                       ??
  -- Variable = { fg = M.base_30.red },                   ??
  Function = { fg = M.base_16.base0D },   -- Function name colors
  Identifier = { fg = M.base_30.cyan },   -- CMAKE_XXXXXX_XXXXXX
  Include = { link = "Define" },          -- #include
  -- Keyword = { fg = M.base_30.blue },                   ??
  -- Label = { fg = M.base_30.red }                       ??
  -- Number = { fg = M.base_30.red},                      -- 1, 1.0, 1.0f
  -- Operator = { link = "Keyword" },                     ??
  PreProc = { link = "Define" },       -- [ #ifdef | #else | #endif ]
  Repeat = { link = "Conditional" },   -- [ while | for]
  -- Special = { fg = M.base_30.red },                    ??
  -- SpecialChar = { fg = M.base_30.red },                -- [ \n | \0 | \e ] and more
  -- Statement = { fg = M.base_30.red },                  ??
  StorageClass = { fg = M.base_30.blue },   -- static
  -- String = { fg = M.base_30.red },                     ??
  -- Structure = { fg = M.base_30.red },                  ??
  -- Tag = { fg = M.base_30.red },                        ??
  Todo = { fg = M.base_30.red },    -- TODO in comments
  Type = { fg = M.base_30.blue },   -- [ struct | class | enum | typedef ] name, const
  -- Typedef = { fg = M.base_30.blue },                   ??

  -- base46/integrations/treesitter.lua
  -- ["@annotation"] = { fg = M.base_30.red },            ??
  -- ["@attribute"] = { fg = M.base_30.red },             ??
  -- ["@character"] = { fg = M.base_16.red },             ??
  ["@constructor"] = { link = "Function" },        -- method definition color (Class::Method)
  ["@constant"] = { fg = "#9E9EFF" },              -- #define NAME
  ["@constant.builtin"] = { link = "@constant" },  -- NULL
  ["@constant.macro"] = { link = "@constant" },    -- Safety first, just making it the same color :)
  -- ["@error"] = { fg = M.base_30.red },                 ??
  -- ["@exception"] = { fg = M.base_30.red },             ??
  -- ["@float"] = { fg = M.base_30.red },                 ??
  ["@keyword"] = { fg = M.base_30.blue },            -- [ struct | class | enum | typedef | friend ] keyword
  ["@keyword.function"] = { fg = M.base_30.blue },   -- likely JavaScript function
  -- ["@keyword.return"] = { fg = M.base_30.red },        -- return
  -- ["@function"] = { link = "Function" },               -- function declaration
  -- ["@function.builtin"] = { link = "Function" },       -- library function()
  -- ["@function.macro"] = { fg = M.base_30.red },        ??
  -- ["@function.call"] = { fg = M.base_30.red },         -- .function()
  ["@operator"] = { fg = M.base_30.red },            -- + - / * << >> and more
  ["@keyword.operator"] = { fg = M.base_30.blue },   -- [ new | delete ] keyword
  -- ["@method"] = { link = "Function" },                 ??
  -- ["@method.call"] = { link = "Function" },            ??
  ["@namespace"] = { fg = M.base_30.green },             -- namespace::
  -- ["@none"] = { fg = M.base_30.red },                  ??
  ["@parameter"] = { link = "Define" },                  -- function parameter names
  -- ["@reference"] = { fg = M.base_30.red },             ??
  ["@punctuation.bracket"] = { link = "Define" },        -- [ () | {} | [] ]
  ["@punctuation.delimiter"] = { fg = M.base_30.red },   -- [ ; | , | : ]
  -- ["@punctuation.special"] = {fg = M.base_30.white },  ??
  -- ["@string"] = {fg = M.base_30.red },                 -- ["string content"]
  --["@string.regex"] = {fg = M.base_30.red },            ??
  --["@string.escape"] = {fg = M.base_30.red },           -- [ \n | \e | \0 ]
  -- ["@string.special"] = {fg = M.base_30.red },         ??
  -- ["@symbol"] = { fg = M.base_30.red },                ??
  -- ["@tag"] = { fg = M.base_30.red },                   ??
  -- ["@tag.attribute"] = { fg = M.base_30.red },         ??
  -- ["@tag.delimiter"] = { fg = M.base_30.red },         ??
  ["@text"] = { fg = M.base_30.red },                -- Red to identify
  ["@text.strong"] = { fg = M.base_30.red },         -- ^
  ["@text.emphasis"] = { fg = M.base_30.red },       -- ^
  ["@text.strike"] = { fg = M.base_30.red },         -- ^
  ["@text.literal"] = { fg = M.base_30.red },        -- ^
  ["@text.uri"] = { fg = M.base_30.red },            -- ^
  ["@type.builtin"] = { fg = M.base_30.blue },       -- [ bool | char | short | int | long | float | double ] types
  ["@variable"] = { fg = M.base_30.white },          -- variables
  ["@variable.builtin"] = { fg = M.base_30.blue },   -- [ this ]
  -- ["@definition"] = { fg = M.base_30.red },            ??
  -- ["@scope"] = { fg = M.base_30.red },                 ??
  ["@field"] = { fg = M.base_30.white },      -- member variables
  ["@field.key"] = { fg = M.base_30.red },    -- Red to identify
  ["@property"] = { fg = M.base_30.white },   -- member pointers
  -- ["@include"] = { fg = M.base_30.red },               ??
  -- ["@conditional"] = { fg = M.base_30.red },           ??
  ["@modifier"] = { fg = M.base_30.red },   -- Waiting for it to be implemented: [ public | private ]
}

M.type = "dark"

return M
