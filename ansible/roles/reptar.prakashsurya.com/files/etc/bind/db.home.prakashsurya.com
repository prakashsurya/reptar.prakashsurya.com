;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     reptar.home.prakashsurya.com. root.home.prakashsurya.com. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;

                                        IN      NS      reptar.home.prakashsurya.com.

reptar.home.prakashsurya.com.           IN      A       192.168.1.2

nzbget.home.prakashsurya.com.           IN      CNAME   reptar.home.prakashsurya.com.
sonarr.home.prakashsurya.com.           IN      CNAME   reptar.home.prakashsurya.com.
radarr.home.prakashsurya.com.           IN      CNAME   reptar.home.prakashsurya.com.
couchpotato.home.prakashsurya.com.      IN      CNAME   reptar.home.prakashsurya.com.
plex.home.prakashsurya.com.             IN      CNAME   reptar.home.prakashsurya.com.
