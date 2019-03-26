# Configurations

I am never satisfied with the way my terminal, vim, code editor, linter etc. are configured.
This repo contains my configurations with coments. Hope you will find them useful.

*Bash*:
Pretty standard Ubuntu configurations. I really like it that way.

*Vim*:
- support for `JavaScript`, `node`, `Python`, `c`, `c++`, `css` (indentation, syntax)
- supprt for markup:`html`,  `markdown`, `resTructured text` (indentation, syntax)
- `Python` autocompletion and linting
- `Javascript` and `node.js` linting
- `NerdTree` included

Note: to get solarized to work on a Mac using iTerm2 please look at this SO thread https://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized

*VSCode*:
- install the extensions in `vs-code-extensions.list`
  ` $ curl https://raw.githubusercontent.com/dasdachs/dotfiles/master/vs-code-extensions.list | code --install-extension
- open `settings(JSON)`, e.g. with `cmd + shift + p` and copy `settings.json` OR
- save `settings.json` into the [Settings file location](https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations)

## Install VIM

Clone the repo into your home directory and open `vim`:

```bash
git clone https://github.com/dasdachs/work-configurations
cp work-configurations/.vim work-configurations/.bash_profile .
vim
```

Run `vim`:

```vim
:PluginInstall
```

Your `vim` plugins are in you `.vim` directory.

That is it :)
