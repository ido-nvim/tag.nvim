local ido = require("ido")

local tag = {}

local function search(kind, prompt)
    local tags = vim.tbl_filter(function (tag)
        if vim.startswith(tag.name, "__anon") then
            return false
        end

        return tag.kind == kind
    end, vim.fn.taglist(".*"))

    local item = ido.start(vim.tbl_map(function (tag) return tag.name end, tags),
    {
        prompt = prompt.."s: ",
    },
    {
        query = {lhs = vim.fn.expand("<cword>"):gsub("[^%w_]", ""), rhs = ""}
    })

    if item then
        for _, tag in ipairs(tags) do
            if tag.name == item then
                vim.cmd("edit "..tag.filename)
                vim.fn.search("\\M"..tag.cmd:sub(3, -3), "cw")
                vim.cmd("normal! zz")
            end
        end
    end
end

function tag.functions()
    search("f", "Function")
end

function tag.variables()
    search("v", "Variable")
end

function tag.types()
    search("t", "Type")
end

function tag.enums()
    search("e", "Enum")
end

function tag.defines()
    search("d", "Define")
end

return tag
