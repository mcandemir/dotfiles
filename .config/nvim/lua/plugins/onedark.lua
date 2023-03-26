local function config()
  local opts = {
    style = 'darker',
    transparent = true,
    code_style = {
      comments = 'none',
      keywords = 'italic',
      functions = 'none',
      strings = 'none',
      variables = 'none'
    }
  }

  require('onedark').setup(opts)
  require('onedark').load()
  require('notify').setup({
    background_colour = '#000000'
  })
end

return { 'navarasu/onedark.nvim', config = config }
