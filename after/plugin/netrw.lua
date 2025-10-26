local is_open = false

local function open()
    is_open = true
    vim.cmd("Ex")
end

local function close()
    is_open = false
    vim.cmd("bd")
end

function Toggle()
    if is_open then
        close()
    else
        open()
    end
end

vim.api.nvim_create_user_command("Netrw", Toggle, { desc = "Toggles netrw" })
