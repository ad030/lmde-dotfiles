echo "Current lobster version:"
lobster -v

sudo curl -sL github.com/justchokingaround/lobster/raw/main/lobster.sh -o /usr/local/bin/lobster &&
sudo chmod +x /usr/local/bin/lobster

echo "Update completed"
echo "New lobster version:"
lobster -v
