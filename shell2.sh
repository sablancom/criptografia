# SSL self signed localhost for rails start to finish, no red warnings. 

# 0) Unless present, create `~/.ssl/`


# 1) Create your private key (any password will do, we remove it below)

openssl genrsa -des3 -out .ssl/localhost.orig.key 2048

# 2) Remove the password

openssl rsa -in .ssl/localhost.orig.key -out .ssl/localhost.key


# 3) Generate the csr (Certificate signing request) (Details are important!)

openssl req -new -key .ssl/localhost.key -out .ssl/localhost.csr


