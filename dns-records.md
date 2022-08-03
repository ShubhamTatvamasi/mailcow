# DNS Recrods

Type | Name | Value | Priority
---|---|---|---
A | mail | 127.0.0.1
MX | @ | mail.example.com | 0
TXT | @ | v=spf1 ip4:127.0.0.1 -all
TXT | dkim._domainkey | v=DKIM1;k=rsa;p=XXXXXXXXX
TXT | _dmarc | v=DMARC1;p=quarantine
CNAME | autoconfig | mail.example.com
CNAME | autodiscover | mail.example.com

> Generate DKIM key in your mail server with 2048 bit key

Type | Service | Protocol | Name | Value | Priority | Weight | Port
---|---|---|---|---|---|---|---
SRV | _autodiscover | _tcp | @ | mail.example.com | 0 | 1 | 443
SRV | _submission | _tcp | @ | mail.example.com | 0 | 1 | 587
SRV | _smtps | _tcp | @ | mail.example.com | 0 | 1 | 465
SRV | _imap | _tcp | @ | mail.example.com | 0 | 1 | 143
SRV | _imaps | _tcp | @ | mail.example.com | 0 | 1 | 993
SRV | _pop3 | _tcp | @ | mail.example.com | 0 | 1 | 110
SRV | _pop3s | _tcp | @ | mail.example.com | 0 | 1 | 995

### Open following ports:

Service | Port
---|---
SMTP | 25
SMTP SSL | 465
SMTP TLS | 587
POP3 | 110
POP3 SSL | 995
IMAP | 143
IMAP SSL | 993
Dashboard | 80
Dashboard SSL | 443
ManageSieve | 4190




