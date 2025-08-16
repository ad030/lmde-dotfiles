echo "Current lobster version:"
lobster -v

# install from source as described on github page
sudo curl -sL github.com/justchokingaround/lobster/raw/main/lobster.sh -o /usr/local/bin/lobster &&
sudo chmod +x /usr/local/bin/lobster

# update script
lobster --update

echo "Update completed"
echo "New lobster version:"
lobster -v
