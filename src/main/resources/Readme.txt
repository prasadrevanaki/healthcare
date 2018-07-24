#Below command used to generate self signed certificate

keytool -genkey -alias selfsigned -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore.p12 -validity 3650

password - myapp@123

#MongoDB Atlas

username - admin
pwd - z7IYIPxqmtAI3Y6Z
host: cluster1-shard-00-00-rsdxt.mongodb.net

# Dynamo DB

java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb