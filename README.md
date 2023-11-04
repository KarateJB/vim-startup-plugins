## Install

Clone this repository in the "plugin" directory of `runtimepath`.

To see the paths of `runtimepath`:

```
:set runtimepath?
```

Or clone it into the "plugin" directory of Vim executable's root path.


## Options/Variables

| Option | Description | Sample |
|:------:|:------------|:-------|
| g:oracle_db_id | The user ID for Oracle DB when using `:Sqlplus`. | `:let g:oracle_db_id = xxx` |
| g:oracle_db_pwd | Like g:oracle_db_id, but is the password for the user ID. | |
| g:oracle_db_tnsname | Like g:oracle_db_id, but is the tnsname you want to connect. | |

