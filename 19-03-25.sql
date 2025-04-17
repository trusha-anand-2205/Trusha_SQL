use vit
switched to db vit
db.products.drop()
true
db.products.insertMany([
    { "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate": ISODate("2011-05-14"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 },"color":["white","black"],"storage":[64,128,256]},
    { "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate": ISODate("2011-09-01") , "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 },"color":["white","black","purple"],"storage":[128,256,512]},
    { "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate": ISODate("2015-01-14"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 },"color":["blue"],"storage":[16,64,128]},
    { "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate": ISODate("2020-05-14"),"spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
    { "_id" : 5, "name" : "SmartPhone", "price" : 599,"releaseDate": ISODate("2022-09-14"), "spec" : { "ram" : 4, "screen" : 5.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256]}
 ])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5
  }
}
db.products.updateOne({_id:1},{$unset:{price:""}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 5.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
db.products.updateMany({_id:1,_id:3,_id:5},{$unset:{price:""}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 5.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
db.products.drop()
true
db.products.insertMany([
    { "_id" : 1, "nmea" : "xPhone", "price" : 799, "releaseDate": ISODate("2011-05-14"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 },"color":["white","black"],"storage":[64,128,256]},
    { "_id" : 2, "nmea" : "xTablet", "price" : 899, "releaseDate": ISODate("2011-09-01") , "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 },"color":["white","black","purple"],"storage":[128,256,512]},
    { "_id" : 3, "nmea" : "SmartTablet", "price" : 899, "releaseDate": ISODate("2015-01-14"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 },"color":["blue"],"storage":[16,64,128]},
    { "_id" : 4, "nmea" : "SmartPad", "price" : 699, "releaseDate": ISODate("2020-05-14"),"spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
    { "_id" : 5, "nmea" : "SmartPhone", "price" : 599,"releaseDate": ISODate("2022-09-14"), "spec" : { "ram" : 4, "screen" : 5.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256]}
 ])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5
  }
}
db.products.updateMany({},{$rename:{nmea:"name"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 5,
  modifiedCount: 5,
  upsertedCount: 0
}
db.products.find()
{
  _id: 1,
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ],
  name: 'xPhone'
}
{
  _id: 2,
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ],
  name: 'xTablet'
}
{
  _id: 3,
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ],
  name: 'SmartTablet'
}
{
  _id: 4,
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ],
  name: 'SmartPad'
}
{
  _id: 5,
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 5.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ],
  name: 'SmartPhone'
}
db.products.drop()
true
db.products.insertMany([
    { "_id" : 1, "nmea" : "xPhone", "price" : 799, "releaseDate": ISODate("2011-05-14"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 },"color":["white","black"],"storage":[64,128,256]},
    { "_id" : 2, "nmea" : "xTablet", "price" : 899, "releaseDate": ISODate("2011-09-01") , "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 },"color":["white","black","purple"],"storage":[128,256,512]},
    { "_id" : 3, "nmea" : "SmartTablet", "price" : 899, "releaseDate": ISODate("2015-01-14"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 },"color":["blue"],"storage":[16,64,128]},
    { "_id" : 4, "nmea" : "SmartPad", "price" : 699, "releaseDate": ISODate("2020-05-14"),"spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256,1024]},
    { "_id" : 5, "nmea" : "SmartPhone", "price" : 599,"releaseDate": ISODate("2022-09-14"), "spec" : { "ram" : 4, "screen" : 5.7, "cpu" : 1.66 },"color":["white","orange","gold","gray"],"storage":[128,256]}
 ])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5
  }
}
db.products.updateMany({_id: 6},{$set:{price:999}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 0,
  modifiedCount: 0,
  upsertedCount: 0
}
-- db.products.updateMany({_id: 6},{$set:{price:999},{upsert: true}})
-- SyntaxError: Unexpected token (1:50)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39mproducts[33m.[39mupdateMany({_id[33m:[39m [35m6[39m}[33m,[39m{$set[33m:[39m{price[33m:[39m[35m999[39m}[33m,[39m{upsert[33m:[39m [36mtrue[39m}})
--  [90m   |[39m                                                   [31m[1m^[22m[39m[0m
db.products.updateMany({_id: 6},{$set:{price:999}},{upsert: true})
{
  acknowledged: true,
  insertedId: 6,
  matchedCount: 0,
  modifiedCount: 0,
  upsertedCount: 1
}
db.products.find()
{
  _id: 1,
  nmea: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  nmea: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  nmea: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  nmea: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  nmea: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 5.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  price: 999
}
db.products.deleteOne({})
{
  acknowledged: true,
  deletedCount: 1
}
db.products.find()
{
  _id: 2,
  nmea: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  nmea: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  nmea: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  nmea: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 5.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  price: 999
}
db.products.deleteMany({})
{
  acknowledged: true,
  deletedCount: 5
}

