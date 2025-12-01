require("bunny"):setup({
  hops = {
    { key = "/",          path = "/", },
    { key = "T",          path = "/tmp" },
    { key = "n",          path = "~/n" },
    { key = "r",          path = "~/rust", },
    { key = "c",          path = "~/.config",                           desc = "Config files" },
    { key = "C",          path = "~/cache" },
    { key = "f",          path = "~/cache/_fonts" },
    { key = "x",          path = "~/Downloads/xps" },
    { key = "s",          path = "~/Downloads/small" },
    { key = "d",          path = "/data" },
    { key = "t",          path = "/data/t" },
    { key = "j",          path = "/data/j" },
    { key = "m",          path = "/data/j/j/musica classica extracted", desc = "Music" },
    { key = { "l", "s" }, path = "~/.local/share",                      desc = "Local share" },
    { key = { "l", "b" }, path = "~/.local/bin",                        desc = "Local bin" },
    { key = { "l", "t" }, path = "~/.local/state",                      desc = "Local state" },
    -- key and path attributes are required, desc is optional
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true,       -- Enable ephemeral hops, default is true
  tabs = true,            -- Enable tab hops, default is true
  notify = false,         -- Notify after hopping, default is false
  fuzzy_cmd = "fzf",      -- Fuzzy searching command, default is "fzf"
})
function Linemode:file_info()
  return string.format("%s   %s   %s", self:permissions(), self:size(), self:mtime())
end

function Linemode:size_mtime()
  return string.format("%s   %s", self:size(), self:mtime())
end
-- require("auto-layout")
