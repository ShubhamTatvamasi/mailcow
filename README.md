# mailcow

Install docker:
```bash
curl -sL https://github.com/ShubhamTatvamasi/docker-install/raw/master/docker-install.sh | bash
```

Become root user:
```bash
sudo su
```

clone the mailcow docker repo:
```bash
cd /opt
git clone https://github.com/mailcow/mailcow-dockerized.git --depth 1
cd mailcow-dockerized
```

Generate mail config:
```bash
./generate_config.sh
```
```
hostname: mail.shubhamtatvamasi.com
```

Skip IP check for SSL Certificate:
```bash
vim mailcow.conf
```
```
SKIP_IP_CHECK=y

# Only if DNS is not working
SKIP_UNBOUND_HEALTHCHECK=y
```

Start mail server:
```bash
docker-compose up -d
```

ID: `admin` \
Pass: `moohoo`

---

Keep these two disabled or we stop receiving emails.

- Relay this domain
- Relay all recipients


---

#### The IP you're using to send email is not authorized...

https://support.google.com/mail/answer/10336


### Thunderbird Mobile

https://www.thunderbird.net/en-GB/mobile/
