$ORIGIN .
$TTL 604800	; 1 week
test.example.com	IN SOA	ns1.test.example.com. admin.test.example.com. (
				31         ; serial
				604800     ; refresh (1 week)
				86400      ; retry (1 day)
				2419200    ; expire (4 weeks)
				604800     ; minimum (1 week)
				)
			NS	ns1.test.example.com.
$ORIGIN test.example.com
$TTL 604800	; 1 week
host1			A	201.12.1.19
$TTL 604800	; 1 week
ns1			A	173.18.0.14

