# Arjan's config

## Install script

```bash 
git clone git@github.com:arjansunar/nvchad_custom_config.git ~/.config/nvim/lua/custom/ 
```

### Pre-installed Lsps

```lua
Mason ={
 ensure_installed ={
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- python stuff
    "pyright",
    "sourcery",
    "black"
  }
}
```

### Additional key-maps

```lua
Mappings = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- force exit
    ["<C-q>"] = { ":q!<CR>", "force exit", opts = { nowait = true } },
    -- wrap with backtiks
    ["<leader>;"] = { 'ciw`<c-r>"`', "Wrap with `", opts = { nowait = true } },
  },
}
```
