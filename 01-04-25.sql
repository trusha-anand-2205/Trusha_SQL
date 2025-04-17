show collections
products
sales
Vit
show databases
admin                  40.00 KiB
config                 48.00 KiB
local                 120.00 KiB
monday                 56.00 KiB
orphanage_management  384.00 KiB
test                  104.00 KiB
vit                    40.00 KiB
//  Start the first MongoDB instance (Primary)
mongod --port 27017 --dbpath /data/vit --replSet rs0
SyntaxError: Missing semicolon. (2:9)

[0m [90m 1 |[39m [90m//  Start the first MongoDB instance (Primary)[39m
[31m[1m>[22m[39m[90m 2 |[39m mongod [33m--[39mport [35m27017[39m [33m--[39mdbpath [33m/[39mdata[33m/[39mvit [33m--[39mreplSet rs0
 [90m   |[39m          [31m[1m^[22m[39m[0m
rs.initiate({
  _id: "rs0",
  members: [
    { _id: 0, host: "localhost:27017" }
  ]
})
MongoServerError[NoReplicationEnabled]: This node was not started with replication enabled.

-- Tried to do operations for Replication, replica set
