# mikrotik
lease_script.rsc : script to add a firewall rule based on a dhcp lease bind / unbind. Used to only allow clients who get an address via DHCP. In my setup, used with dhcp > user-radius=yes. So users have to be known by my radius to get an IP from DHCP server and have a granted wan access.

You have to set up a (disabled) firewall filter log which comment refers to the comment in the .rsc script (for the "place before" statement)
