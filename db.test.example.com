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
			NS	ns2.test.example.com.
$ORIGIN test.example.com.test.example.com.
$TTL 300	; 5 minutes
host1			A	201.17.89.171
$TTL 8450	; 2 hours 20 minutes 50 seconds
host25			A	201.12.1.14
host33			A	201.12.1.14
$ORIGIN test.example.com.
$TTL 30	; 30 seconds
host1			A	201.17.89.171
$TTL 8450	; 2 hours 20 minutes 50 seconds
host100			A	201.12.1.12
$TTL 86400	; 1 day
host11			CNAME	host1
$TTL 8450	; 2 hours 20 minutes 50 seconds
host12			A	201.12.1.12
$TTL 86400	; 1 day
host14			CNAME	host1
host30			CNAME	host1
host31			A	201.10.14.2
$TTL 8450	; 2 hours 20 minutes 50 seconds
host33			A	201.12.1.14
host34			A	201.12.1.12
host35			A	201.12.1.12
host36			A	201.12.1.12
host37			A	201.12.1.12
host38			A	201.12.1.12
$TTL 604800	; 1 week
ns1			A	167.71.166.167
ns2			A	167.71.166.167
