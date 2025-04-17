use vit
switched to db vit
db.products.drop()
true
db.sales.insertMany([
	{ "_id" : 1, "item" : "Americanos", "price" : 5, "size": "Short", "quantity" : 22, "date" : ISODate("2022-01-15T08:00:00Z") },
	{ "_id" : 2, "item" : "Cappuccino", "price" : 6, "size": "Short","quantity" : 12, "date" : ISODate("2022-01-16T09:00:00Z") },
	{ "_id" : 3, "item" : "Lattes", "price" : 15, "size": "Grande","quantity" : 25, "date" : ISODate("2022-01-16T09:05:00Z") },
	{ "_id" : 4, "item" : "Mochas", "price" : 25,"size": "Tall", "quantity" : 11, "date" : ISODate("2022-02-17T08:00:00Z") },
	{ "_id" : 5, "item" : "Americanos", "price" : 10, "size": "Grande","quantity" : 12, "date" : ISODate("2022-02-18T21:06:00Z") },
	{ "_id" : 6, "item" : "Cappuccino", "price" : 7, "size": "Tall","quantity" : 20, "date" : ISODate("2022-02-20T10:07:00Z") },
	{ "_id" : 7, "item" : "Lattes", "price" : 25,"size": "Tall", "quantity" : 30, "date" : ISODate("2022-02-21T10:08:00Z") },
	{ "_id" : 8, "item" : "Americanos", "price" : 10, "size": "Grande","quantity" : 21, "date" : ISODate("2022-02-22T14:09:00Z") },
	{ "_id" : 9, "item" : "Cappuccino", "price" : 10, "size": "Grande","quantity" : 17, "date" : ISODate("2022-02-23T14:09:00Z") },
	{ "_id" : 10, "item" : "Americanos", "price" : 8, "size": "Tall","quantity" : 15, "date" : ISODate("2022-02-25T14:09:00Z")}
]);
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6,
    '6': 7,
    '7': 8,
    '8': 9,
    '9': 10
  }
}
db.sales.aggregate([
  {
$group: {
		_id: '$item',
		averageQty: { $avg: '$quantity'},
},
},
]);
{
  _id: 'Americanos',
  averageQty: 17.5
}
{
  _id: 'Lattes',
  averageQty: 27.5
}
{
  _id: 'Cappuccino',
  averageQty: 16.333333333333332
}
{
  _id: 'Mochas',
  averageQty: 11
}
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      averageAmount: { $avg: { $multiply: ['$quantity', '$price'] } },
    },
  },
  { $sort: { averageAmount: 1 } },
])
{
  _id: 'Cappuccino',
  averageAmount: 127.33333333333333
}
{
  _id: 'Americanos',
  averageAmount: 140
}
{
  _id: 'Mochas',
  averageAmount: 275
}
{
  _id: 'Lattes',
  averageAmount: 562.5
}
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      averageAmount: { $avg: { $multiply: ['$quantity', '$price'] } },
    },
  },
	{ $match: { averageAmount: { $gt: 150 }}},
  { $sort: { averageAmount: 1 } },
])
{
  _id: 'Mochas',
  averageAmount: 275
}
{
  _id: 'Lattes',
  averageAmount: 562.5
}
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      itemCount:{ $count:{} },
    },
  },
])
{
  _id: 'Mochas',
  itemCount: 1
}
{
  _id: 'Cappuccino',
  itemCount: 3
}
{
  _id: 'Americanos',
  itemCount: 4
}
{
  _id: 'Lattes',
  itemCount: 2
}
db.sales.aggregate([
  {
    $group: {
      _id: null,
      totalQty: { $sum: '$quantity' },
    },
  },
]);
{
  _id: null,
  totalQty: 185
}
-- db.sales.aggregate([
--   {
--     $group: {
--       _id: '$item;,
--       totalQty: { $sum: '$quantity' },
--     },
--   },
-- ]);
-- SyntaxError: Unterminated string constant. (4:11)

-- [0m [90m 2 |[39m   {
--  [90m 3 |[39m     $group[33m:[39m {
-- [31m[1m>[22m[39m[90m 4 |[39m       _id[33m:[39m [32m'$item;,[39m
--  [90m   |[39m            [31m[1m^[22m[39m
--  [90m 5 |[39m       totalQty[33m:[39m { $sum[33m:[39m [32m'$quantity'[39m }[33m,[39m
--  [90m 6 |[39m     }[33m,[39m
--  [90m 7 |[39m   }[33m,[39m[0m
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      totalQty: { $sum: '$quantity' },
    },
  },
]);
{
  _id: 'Cappuccino',
  totalQty: 49
}
{
  _id: 'Americanos',
  totalQty: 70
}
{
  _id: 'Lattes',
  totalQty: 55
}
{
  _id: 'Mochas',
  totalQty: 11
}
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      maxQty: { $max: '$quantity' },
    },
  },
]);
{
  _id: 'Cappuccino',
  maxQty: 20
}
{
  _id: 'Americanos',
  maxQty: 22
}
{
  _id: 'Lattes',
  maxQty: 30
}
{
  _id: 'Mochas',
  maxQty: 11
}
db.sales.aggregate([
  {
    $group: {
      _id: '$item',
      minQty: { $min: '$quantity' },
    },
  },
]);
{
  _id: 'Americanos',
  minQty: 12
}
{
  _id: 'Cappuccino',
  minQty: 12
}
{
  _id: 'Lattes',
  minQty: 25
}
{
  _id: 'Mochas',
  minQty: 11
}
