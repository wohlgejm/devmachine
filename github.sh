ssh-keygen -t rsa -b 4096 -C "wohlgejm@gmail.com" -N '' -f ~/.ssh/id_rsa

KEY=$( cat ~/.ssh/id_rsa.pub )
HOSTNAME=$( cat /proc/sys/kernel/hostname)
USER=$( whoami )
TITLE=$USER@$HOSTNAME
JSON=$( printf '{"title": "%s", "key": "%s"}' "$TITLE" "$KEY" )

curl -s -d "$JSON" "https://api.github.com/user/keys?access_token=$TOKEN"
