task1:
db.restaurants.find(
  undefined
)

task 2:
db.restaurants.find(
  undefined,
  {grades: 0,address: 0,_id: 0}
)

task 3:
db.restaurants.find(
  {borough: 'Bronx'}
).limit(5)

task 4:
db.restaurants.find(
  {$or: [{ name: RegExp('^Wil')},{ $and: [ { cuisine: { $ne: 'American ' } }, { cuisine: { $ne: 'Chinese' } } ]}]},
  {restaurant_id: 1,name: 1,borough: 1,cuisine: 1,_id: 0}
)

task 5:
db.restaurants.find(
  {name: {$regex: 'mon.*',$options: 'i'}},
  {name: 1,borough: 1,'address.coord': 1,cuisine: 1,_id: 0}
)

task 6:
db.restaurants.find(
  {borough: {$in: [ 'Staten Island', 'Queens', 'Bronx', 'Brooklyn']}},
  {id: 1,name: 1,borough: 1,cuisine: 1,_id: 0}
)
