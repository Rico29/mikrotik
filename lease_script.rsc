:if ([:tonum $leaseBound] = 0) do={
	:log info "dhcp lease released or deleted";
        /ip firewall filter remove numbers=[ /ip firewall filter find chain=forward src-mac-address="$leaseActMAC" and src-address="$leaseActIP" and action="accept" and comment~"^FTTH"] ;
	return;
}

:if ([:tonum $leaseBound] = 1) do={
	:log info "dhcp lease bound, adding firewall rule";
        /ip firewall filter add \
chain=forward \
src-mac-address=$leaseActMAC \
src-address=$leaseActIP \
action=accept \
comment="FTTH user mac $leaseActMAC" \
place-before= [find comment~"^FTTH RULES end marker"]
	return;
}
