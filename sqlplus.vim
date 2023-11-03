" Prerquisite: set alias sqlplus to your real sqlplus path, e.q. alias sqlplus='~/bin/sqlplus', '/c/oracle/11.2.0/client/bin/sqlplus.exe' ... etc
exe '!sqlplus id/pwd@tnsName @' . expand('%:p')
" echo 'select ....' | sqlplus id/pwd@tnsName
