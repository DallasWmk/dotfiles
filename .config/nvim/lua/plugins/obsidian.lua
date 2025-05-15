return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "Default",
          path = "~/Obsidian/Default",
        },
      },
      ui = { enable = false },
      -- see below for full list of options 👇
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enable = true,
    opts = {},
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "echasnovski/mini.nvim",
    },
    code = {
      -- Turn on / off code block & inline code rendering
      enabled = true,
      -- Additional modes to render code blocks
      render_modes = false,
      -- Turn on / off any sign column related rendering
      sign = true,
      -- Determines how code blocks & inline code are rendered:
      --  none:     disables all rendering
      --  normal:   adds highlight group to code blocks & inline code, adds padding to code blocks
      --  language: adds language icon to sign column if enabled and icon + name above code blocks
      --  full:     normal + language
      style = "full",
      -- Determines where language icon is rendered:
      --  right: right side of code block
      --  left:  left side of code block
      position = "left",
      -- Amount of padding to add around the language
      -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
      language_pad = 0,
      -- Whether to include the language name next to the icon
      language_name = true,
      -- A list of language names for which background highlighting will be disabled
      -- Likely because that language has background highlights itself
      -- Or a boolean to make behavior apply to all languages
      -- Borders above & below blocks will continue to be rendered
      disable_background = { "diff" },
      -- Width of the code block background:
      --  block: width of the code block
      --  full:  full width of the window
      width = "full",
      -- Amount of margin to add to the left of code blocks
      -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
      -- Margin available space is computed after accounting for padding
      left_margin = 0,
      -- Amount of padding to add to the left of code blocks
      -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
      left_pad = 0,
      -- Amount of padding to add to the right of code blocks when width is 'block'
      -- If a floating point value < 1 is provided it is treated as a percentage of the available window space
      right_pad = 0,
      -- Minimum width to use for code blocks when width is 'block'
      min_width = 0,
      -- Determines how the top / bottom of code block are rendered:
      --  none:  do not render a border
      --  thick: use the same highlight as the code body
      --  thin:  when lines are empty overlay the above & below icons
      border = "thin",
      -- Used above code blocks for thin border
      above = "▄",
      -- Used below code blocks for thin border
      below = "▀",
      -- Highlight for code blocks
      highlight = "RenderMarkdownCode",
      -- Highlight for language, overrides icon provider value
      highlight_language = nil,
      -- Padding to add to the left & right of inline code
      inline_pad = 0,
      -- Highlight for inline code
      highlight_inline = "RenderMarkdownCodeInline",
    },
  },
}
