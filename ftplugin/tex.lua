vim.api.nvim_create_user_command("SetupIEEETex", function()
  local src_dir = vim.fn.expand("~/.config/nvim/tex_templates")

  local files = {
    "main.tex",
    "ieeeconf.cls",
  }

  local cwd = vim.fn.expand("%:p:h")

  for _, file in ipairs(files) do
    local src = src_dir .. "/" .. file
    local dst = cwd .. "/" .. file

    -- copy file
    vim.fn.system({ "cp", src, dst })
  end

  print("IEEE LaTeX template copied to current directory")
end, {})
