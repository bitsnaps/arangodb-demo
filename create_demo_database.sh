db._createDatabase(demo);
var users = require(@arangodb/users);
users.save(root@demo, master);
users.grantDatabase(root@demo, demo);
# Now you can connect to this demo db
arangosh --server.username root@demo --server.database demo
