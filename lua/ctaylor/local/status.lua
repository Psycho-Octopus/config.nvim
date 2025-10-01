-- Custom status line
-- format:
-- left: MODE | name | modified?
-- right: encoding | file type | total line numbers: line number: column

vim.api.nvim_set_hl(0, "StatusLineModified", { fg = "#f38ba8", bold = true })
vim.api.nvim_set_hl(0, "StatusLineNormal", { fg = "#89b4fa", bold = true })
vim.api.nvim_set_hl(0, "StatusLineInsert", { fg = "#02ed6c", bold = true })
vim.api.nvim_set_hl(0, "StatusLineCmd", { fg = "#e57d2d", bold = true })
vim.api.nvim_set_hl(0, "StatusLineMode", { fg = "#e811f7", bold = true })
vim.api.nvim_set_hl(0, "StatusLineFile", { fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "StatusLineInfo", { fg = "#cdd6f4" })

local mode_map = {
	n = "NORMAL",
	i = "INSERT",
	v = "VISUAL",
	V = "V-LINE",
	["\22"] = "V-BLOCK",
	c = "COMMAND",
	s = "SELECT",
	S = "S-LINE",
	["\19"] = "S-BLOCK",
	R = "REPLACE",
	r = "PROMPT",
	["!"] = "SHELL",
	t = "TERMINAL",
}

IsModified = function()
  if vim.bo.modified then
    return "%#StatusLineModified# [+] %*"
  else
    return ""
  end
end

Mode = function()
	local mode = vim.api.nvim_get_mode().mode
	local mode_name = mode_map[mode] or "UNKNOWN"
	if mode_name == "NORMAL" then
		return "%#StatusLineNormal# " .. mode_name .. " %*"
	elseif mode_name == "INSERT" then
		return "%#StatusLineInsert# " .. mode_name .. " %*"
	elseif mode_name == "COMMAND" then
		return "%#StatusLineCmd# " .. mode_name .. " %*"
	end
	return "%#StatusLineMode#" .. mode_name .. "%*"
end

FileName = function()
	local filename = vim.fn.expand('%:t')
	if filename == "" then
		filename = "[No Name]"
	end

	return "%#StatusLineFile# " .. filename .. " %*"
end

StatusLine = function()
  local left = string.format('%s | %s %s',
    Mode(),
    FileName(),
    IsModified())

  local encoding = vim.bo.fileencoding ~= "" and vim.bo.fileencoding or "utf-8"
  local filetype = vim.bo.filetype ~= "" and vim.bo.filetype or "no ft"

  local thing = string.format('%s | %s | %d:%d:%d ',
    encoding,
    filetype,
    vim.api.nvim_buf_line_count(0),
    vim.fn.line('.'),
    vim.fn.col('.'))

	local right =  "%#StatusLineInfo# " .. thing .. " %*"

  return left .. '%=' .. right
end

StatusSetup = function()
	vim.opt.statusline = "%!v:lua.StatusLine()"
end
