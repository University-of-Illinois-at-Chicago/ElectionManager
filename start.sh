#!/bin/bash
#########################################################################
#
# Description: Ruby on Rails application
# Protocol: HttpProxyPass
#
#########################################################################

LD_LIBRARY_PATH="/opt/rh/ruby193/root/usr/lib64"
PATH="/opt/rh/ruby193/root/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"
RAILS_RELATIVE_URL_ROOT="$WEBPATH"
export LD_LIBRARY_PATH PATH RAILS_RELATIVE_URL_ROOT

echo "Starting on" $(date)

#
# Start rails server
#
exec rails server --binding=127.0.0.1 --daemon --pid=$UIC_APP_PIDFILE --port=$UIC_APP_PORT
echo "Failed to start!" >&2
exit 1
