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
```

Start mail server:
```bash
docker-compose up -d
```

ID: `admin` \
Pass: `moohoo`
