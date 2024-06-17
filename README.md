---
## Install

Clone this repository in the "plugin" directory of `runtimepath`.

To see the paths of `runtimepath`:

```
:set runtimepath?
```

Or clone it into the "plugin" directory of Vim executable's root path.

---
## Options/Variables

### grep-operator

| Option | Description | Sample |
|:------:|:------------|:-------|
| g:vsp_grep_by_rg | Use ripgrep to search, [jremmen/vim-ripgrep](https://github.com/jremmen/vim-ripgrep) is required. | `:let g:vsp_grep_by_rg=1` |

### sqlplus

| Option | Description | Sample |
|:------:|:------------|:-------|
| g:vsp_oracle_db_id | The user ID for Oracle DB when using `:Sqlplus`. | `:let g:vsp_oracle_db_id=xxx` |
| g:vsp_oracle_db_pwd | Like g:vsp_oracle_db_id, but is the password for the user ID. | |
| g:vsp_oracle_db_tnsname | Like g:vsp_oracle_db_id, but is the tnsname you want to connect. | |

---
## Commands

To check if the plugin is loaded:
```
:filter vim-startup-plugins scriptnames
```

