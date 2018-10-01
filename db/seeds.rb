User.create!(email: 'me@example.com', password: '123456')

Movie.create(title: 'Kill Bill', release_year: 2003)
Movie.create(title: 'Reservoir dogs', release_year: 1994)
Movie.create(title: 'Inglourious Basterds', release_year: 2008)
Movie.create(title: 'Pulp fiction', release_year: 1994)

Person.create(first_name: 'Uma', last_name: 'Thurman', aliases: 'The bride')
Person.create(first_name: 'Quentin', last_name: 'Tarantino', aliases: 'Q')
Person.create(first_name: 'David', last_name: 'Carradine', aliases: 'D')
Person.create(first_name: 'Bruce', last_name: 'Willis', aliases: 'W')
Person.create(first_name: 'Brad', last_name: 'Pitt', aliases: 'B')

m = Movie.where(title: 'Kill Bill').first
m.casting << Person.where(last_name: 'Thurman').first
m.casting << Person.where(last_name: 'Carradine').first
m.directors << Person.where(last_name: 'Tarantino').first
m.producers << Person.where(last_name: 'Tarantino').first

m = Movie.where(title: 'Reservoir dogs').first
m.casting << Person.where(last_name: 'Tarantino').first
m.directors << Person.where(last_name: 'Tarantino').first
m.producers << Person.where(last_name: 'Tarantino').first

m = Movie.where(title: 'Inglourious Basterds').first
m.casting << Person.where(last_name: 'Pitt').first
m.casting << Person.where(last_name: 'Tarantino').first
m.directors << Person.where(last_name: 'Tarantino').first
m.producers << Person.where(last_name: 'Tarantino').first

m = Movie.where(title: 'Pulp fiction').first
m.casting << Person.where(last_name: 'Willis').first
m.casting << Person.where(last_name: 'Thurman').first
m.casting << Person.where(last_name: 'Tarantino').first
m.directors << Person.where(last_name: 'Tarantino').first
m.producers << Person.where(last_name: 'Tarantino').first











