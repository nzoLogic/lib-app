libraries = [
  {name: "Steele Library", floor_count: 5, floor_area: 3200},
  {name: "SFPL", floor_count: 2, floor_area: 2750},
  {name: "Marina Branch Library", floor_count: 1, floor_area: 4800}
]
LibraryUser.delete_all
User.delete_all
Library.delete_all
Library.create(libraries)
