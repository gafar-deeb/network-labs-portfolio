/ip ipsec proposal
add name=site2site-proposal auth-algorithms=sha256 enc-algorithms=aes-256-cbc pfs-group=none

/ip ipsec peer
add address=REMOTE_PUBLIC_IP exchange-mode=ike2 secret=StrongSharedKey

/ip ipsec policy
add src-address=192.168.1.0/24 dst-address=192.168.2.0/24 tunnel=yes proposal=site2site-proposal

/ip firewall filter
add chain=input protocol=udp port=500,4500 action=accept
add chain=input protocol=ipsec-esp action=accept

/ip firewall nat
add chain=srcnat src-address=192.168.1.0/24 dst-address=192.168.2.0/24 action=accept
