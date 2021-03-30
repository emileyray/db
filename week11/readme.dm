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
