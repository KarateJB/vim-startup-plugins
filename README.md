## Install

Clone this repository in the "plugin" directory of `runtimepath`.

To see the paths of `runtimepath`:

```
:set runtimepath?
```

Or clone it into the "plugin" directory of Vim executable's root path.

---
## Scripts

### fzf-search

I suggest to use [fzf.vim](https://github.com/junegunn/fzf.vim) for using fzf in Vim.
This plugin is for those has problems with fzf.vim.

| Command | Description |
|:-------:|:------------|
| :FF | Open fzf to search files. |


### grep-operator

| Hotkey | Description |
|:------:|:------------|
| <leader>g | Use `grep` to search current selected word(s). |

| Option | Description | Sample |
|:------:|:------------|:-------|
| g:vsp_grep_by_rg | Use ripgrep to search, [jremmen/vim-ripgrep](https://github.com/jremmen/vim-ripgrep) is required. | `:let g:vsp_grep_by_rg=1` |


### sqlplus

| Command | Description |
|:-------:|:------------|
| :Sqlplus | Execute all the sql in current buffer. |


| Option | Description | Sample |
|:------:|:------------|:-------|
| g:vsp_oracle_db_id | The user ID for Oracle DB when using `:Sqlplus`. | `:let g:vsp_oracle_db_id=xxx` |
| g:vsp_oracle_db_pwd | Like g:vsp_oracle_db_id, but is the password for the user ID. | |
| g:vsp_oracle_db_tnsname | Like g:vsp_oracle_db_id, but is the tnsname you want to connect. | |


### sum-numbers

| Command | Description |
|:-------:|:------------|
| :Sum | Sum all the numbers in current buffer and echo it, also yank the result to register s. |


### toggle-copilot

| Hotkey | Description |
|:------:|:------------|
| <leader>ct | Toggle [Copilot.vim](https://github.com/github/copilot.vim) to be enabled/disalbed. |


### toggle-quickfix

| Hotkey | Description |
|:------:|:------------|
| <leader>q | Toggle quickfix window to be opened/hidden. |

---
## Trouble Shooting

Check if the plugin is loaded:
```
:filter vim-startup-plugins scriptnames
```

