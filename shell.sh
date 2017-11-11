# Create a ssh directory in your app directory
mkdir .ssl

# Create a self signed certificate
# It'll ask you for address data and you can specify what you like but for
# *Common Name* use: "localhost.ssl"
openssl req -new -newkey rsa:2048 -sha1 -days 365 -nodes -x509 -keyout .ssl/localhost.key -out .ssl/localhost.crt

# Add localhost.ssl to /private/etc/hosts
echo "127.0.0.1 localhost.ssl" | sudo tee -a /private/etc/hosts

# That's it. Now you need to run two development webservers one for 
# HTTP and the other for HTTPS SSL request. I recommend *Thin* as the webserver
# because the Rails default webserver won't understand SSL.
# If you don't have Thin add *gem 'thin', group: :development* to your GEMFILE 
# and run
bundle install

# To start the regular webserver just use
bundle exec rails s

# To start the SSL webserver open another terminal window and run
bundle exec thin start -p 3001 --ssl --ssl-verify --ssl-key-file .ssl/localhost.key --ssl-cert-file .ssl/localhost.crt

# Now the HTTP website is available via *localhost:3000* in your browser and the
# SSL website is running under *localhost:3001*.
