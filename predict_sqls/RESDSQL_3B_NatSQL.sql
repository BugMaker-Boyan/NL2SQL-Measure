select count(*) from singer	concert_singer
select count(*) from singer	concert_singer
select singer.name , singer.country , singer.age from singer   order by singer.age desc	concert_singer
select singer.name , singer.country , singer.age from singer   order by singer.age desc	concert_singer
select avg(singer.age) , min(singer.age) , max(singer.age) from singer where  singer.country = "France"	concert_singer
select avg(singer.age) , min(singer.age) , max(singer.age) from singer where  singer.country = "France"	concert_singer
select singer.song_name , singer.song_release_year from singer   order by singer.age asc limit 1	concert_singer
select singer.song_name , singer.song_release_year from singer   order by singer.age asc limit 1	concert_singer
select distinct singer.country from singer where  singer.age > 20	concert_singer
select distinct singer.country from singer where  singer.age > 20	concert_singer
select singer.country , count(*) from singer  group by singer.country	concert_singer
select singer.country , count(*) from singer  group by singer.country	concert_singer
select singer.song_name from singer where  singer.age > (select avg(singer.age) from singer  )	concert_singer
select singer.song_name from singer where  singer.age > (select avg(singer.age) from singer  )	concert_singer
select stadium.location , stadium.name from stadium where  stadium.capacity between 5000 and 10000	concert_singer
select stadium.location , stadium.name from stadium where  stadium.capacity between 5000 and 10000	concert_singer
select max(stadium.capacity) , avg(stadium.capacity) from stadium	concert_singer
select avg(stadium.capacity) , max(stadium.capacity) from stadium	concert_singer
select stadium.name , stadium.capacity from stadium  group by stadium.name  order by avg(stadium.average) desc limit 1	concert_singer
select stadium.name , stadium.capacity from stadium  group by stadium.name  order by avg(stadium.average) desc limit 1	concert_singer
select count(*) from concert where  concert.year = 2014 or concert.year = 2015	concert_singer
select count(*) from concert where  concert.year = 2014 or concert.year = 2015	concert_singer
select stadium.name , count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID  group by concert.stadium_id	concert_singer
select stadium.name , count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID  group by concert.stadium_id	concert_singer
select stadium.name , stadium.capacity from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year >= 2014  group by concert.stadium_id  order by count(*) desc limit 1	concert_singer
select stadium.name , stadium.capacity from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year > 2013  group by stadium.stadium_id  order by count(*) desc limit 1	concert_singer
select concert.year from concert  group by concert.year  order by count(*) desc limit 1	concert_singer
select concert.year from concert  group by concert.year  order by count(*) desc limit 1	concert_singer
select stadium.name from stadium where  stadium.stadium_id not in (select concert.Stadium_ID from concert  )	concert_singer
select stadium.name from stadium where  stadium.stadium_id not in (select concert.Stadium_ID from concert  )	concert_singer
select singer.country from singer where  singer.age > 40   intersect select singer.country from singer where  singer.age < 30	concert_singer
select stadium.name from stadium   except select stadium.name from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014	concert_singer
select stadium.name from stadium   except select stadium.name from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014	concert_singer
select concert.concert_name , concert.theme , count(*) from singer_in_concert join concert on singer_in_concert.concert_ID = concert.concert_ID  group by concert.concert_name	concert_singer
select concert.concert_name , concert.theme , count(*) from singer_in_concert join concert on singer_in_concert.concert_ID = concert.concert_ID  group by concert.concert_name	concert_singer
select singer.name , count(*) from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID  group by singer.name	concert_singer
select singer.name , count(*) from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID  group by singer.name	concert_singer
select singer.name from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID where  concert.year = 2014	concert_singer
select singer.name from singer_in_concert join singer on singer_in_concert.Singer_ID = singer.Singer_ID join concert on singer_in_concert.concert_ID = concert.concert_ID where  concert.year = 2014	concert_singer
select singer.name , singer.country from singer where  singer.song_name like "%Hey%"	concert_singer
select singer.name , singer.country from singer where  singer.song_name like "%Hey%"	concert_singer
select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014   intersect select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2015	concert_singer
select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2014   intersect select stadium.name , stadium.location from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  concert.year = 2015	concert_singer
select count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  stadium.capacity = (select max(stadium.Capacity) from stadium  )	concert_singer
select count(*) from concert join stadium on concert.Stadium_ID = stadium.Stadium_ID where  stadium.capacity = (select max(stadium.Capacity) from stadium  )	concert_singer
select count(*) from Pets where  pets.weight > 10	pets_1
select count(*) from Pets where  pets.weight > 10	pets_1
select pets.weight from Pets where  pets.pettype = "dog"   order by pets.pet_age asc limit 1	pets_1
select pets.weight from Pets where  pets.pet_age = "dog"   order by pets.pet_age asc limit 1	pets_1
select max(pets.weight) , pets.pettype from Pets  group by pets.pettype	pets_1
select max(pets.weight) , pets.pettype from Pets  group by pets.pettype	pets_1
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID where  student.age > 20	pets_1
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.age > 20	pets_1
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.sex = "F" and pets.pettype = "dog"	pets_1
select count(*) from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  student.sex = "F" and pets.pettype = "dog"	pets_1
select count( distinct pets.pettype) from Pets	pets_1
select count( distinct pets.pettype) from Pets	pets_1
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat" or pets.pettype = "dog"	pets_1
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat" or pets.pettype = "dog"	pets_1
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"   intersect select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog"	pets_1
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"   intersect select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog"	pets_1
select student.major , student.age from Student   except select student.major , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"	pets_1
select student.major , student.age from Student   except select student.major , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"	pets_1
select student.stuid from Student   except select student.stuid from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"	pets_1
select student.stuid from Student   except select student.stuid from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "cat"	pets_1
select student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog" and pets.pettype != "cat"	pets_1
select student.fname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pettype = "dog" and pets.pettype != "cat"	pets_1
select pets.pettype , pets.weight from Pets   order by pets.pet_age asc limit 1	pets_1
select pets.pettype , pets.weight from Pets   order by pets.pet_age asc limit 1	pets_1
select pets.petid , pets.weight from Pets where  pets.pet_age > 1	pets_1
select pets.petid , pets.weight from Pets where  pets.pet_age > 1	pets_1
select pets.pettype , avg(pets.pet_age) , max(pets.pet_age) from Pets  group by pets.pettype	pets_1
select pets.pettype , avg(pets.pet_age) , max(pets.pet_age) from Pets  group by pets.pettype	pets_1
select pets.pettype , avg(pets.weight) from Pets  group by pets.pettype	pets_1
select pets.pettype , avg(pets.weight) from Pets  group by pets.pettype	pets_1
select distinct student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID	pets_1
select distinct student.fname , student.age from Has_Pet join Student on Has_Pet.StuID = Student.StuID	pets_1
select has_pet.petid from Has_Pet join Student on Has_Pet.StuID = Student.StuID where  student.lname = "Smith"	pets_1
select has_pet.petid from Has_Pet join Student on Has_Pet.StuID = Student.StuID where  student.lname = "Smith"	pets_1
select count(*) , has_pet.stuid from Has_Pet  group by has_pet.stuid	pets_1
select count(*) , has_pet.stuid from Has_Pet  group by has_pet.stuid	pets_1
select student.fname , student.sex from Has_Pet join Student on Has_Pet.StuID = Student.StuID  group by has_pet.stuid having  count(*) > 1	pets_1
select student.fname , student.sex from Has_Pet join Student on Has_Pet.StuID = Student.StuID  group by has_pet.stuid having  count(*) > 1	pets_1
select student.lname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pet_age = 3 and pets.pettype = "cat"	pets_1
select student.lname from Has_Pet join Student on Has_Pet.StuID = Student.StuID join Pets on Has_Pet.PetID = Pets.PetID where  pets.pet_age = 3 and pets.pettype = "cat"	pets_1
select avg(student.age) from Student where  student.stuid not in (select Has_Pet.StuID from Has_Pet  )	pets_1
select avg(student.age) from Student where  student.stuid not in (select Has_Pet.StuID from Has_Pet  )	pets_1
select count(*) from continents	car_1
select count(*) from continents	car_1
select continents.contid , continents.continent , count(*) from countries join continents on countries.Continent = continents.ContId  group by continents.contid	car_1
select continents.continent , countries.countryname , count(*) from countries join continents on countries.Continent = continents.ContId  group by continents.continent	car_1
select count(*) from countries	car_1
select count(*) from countries	car_1
select car_makers.fullname , car_makers.maker , count(*) from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker	car_1
select car_makers.fullname , car_makers.id , count(*) from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.horsepower asc limit 1	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.horsepower asc limit 1	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.weight < (select avg(cars_data.Weight) from cars_data  )	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.weight < (select avg(cars_data.Weight) from cars_data  )	car_1
select car_makers.maker from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.year = 1970	car_1
select distinct car_makers.maker from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.year = 1970	car_1
select car_names.make , cars_data.year from cars_data join car_names on cars_data.Id = car_names.MakeId   order by cars_data.year asc limit 1	car_1
select car_makers.maker , cars_data.year from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id   order by cars_data.year asc limit 1	car_1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.year > 1980	car_1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  cars_data.year > 1980	car_1
select continents.continent , count(*) from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId  group by continents.continent	car_1
select continents.continent , count(*) from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId  group by continents.continent	car_1
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryname  order by count(*) desc limit 1	car_1
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by car_makers.country  order by count(*) desc limit 1	car_1
select count(*) , car_makers.fullname from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker	car_1
select count(*) , car_makers.id , car_makers.fullname from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id	car_1
select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "amc hornet sportabout (sw)"	car_1
select cars_data.accelerate from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.make = "amc hornet sportabout (sw)"	car_1
select count(*) from car_makers join countries on car_makers.Country = countries.CountryId where  countries.countryname = "france"	car_1
select count(*) from car_makers join countries on car_makers.Country = countries.CountryId where  countries.countryname = "france"	car_1
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  countries.countryname = "usa"	car_1
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.country = "USA"	car_1
select avg(cars_data.mpg) from cars_data where  cars_data.cylinders = 4	car_1
select avg(cars_data.mpg) from cars_data where  cars_data.cylinders = 4	car_1
select min(cars_data.weight) from cars_data where  cars_data.year = 1974 and cars_data.cylinders = 8	car_1
select min(cars_data.weight) from cars_data where  cars_data.year = 1974 and cars_data.cylinders = 8	car_1
select car_makers.maker , model_list.model from model_list join car_makers on model_list.Maker = car_makers.Id	car_1
select car_makers.maker , model_list.model from model_list join car_makers on model_list.Maker = car_makers.Id	car_1
select countries.countryname , car_makers.id from car_makers join countries on car_makers.Country = countries.CountryId	car_1
select countries.countryname , countries.countryid from car_makers join countries on car_makers.Country = countries.CountryId	car_1
select count(*) from cars_data where  cars_data.horsepower > 150	car_1
select count(*) from cars_data where  cars_data.horsepower > 150	car_1
select avg(cars_data.weight) , cars_data.year from cars_data  group by cars_data.year	car_1
select avg(cars_data.weight) , cars_data.year from cars_data  group by cars_data.year	car_1
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId where  continents.continent = "europe"  group by countries.countryname having  count(*) >= 3	car_1
select countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId join continents on countries.Continent = continents.ContId where  continents.continent = "europe"  group by countries.countryname having  count(*) >= 3	car_1
select max(cars_data.horsepower) , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 3	car_1
select max(cars_data.horsepower) , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 3  group by car_names.make  order by max(cars_data.horsepower) desc limit 1	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.mpg desc limit 1	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model   order by cars_data.mpg desc limit 1	car_1
select avg(cars_data.horsepower) from cars_data where  cars_data.year < 1980	car_1
select avg(cars_data.horsepower) from cars_data where  cars_data.year < 1980	car_1
select avg(cars_data.edispl) from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"	car_1
select avg(cars_data.edispl) from cars_data join car_names on cars_data.Id = car_names.MakeId where  car_names.model = "volvo"	car_1
select max(cars_data.accelerate) , cars_data.cylinders from cars_data  group by cars_data.cylinders	car_1
select max(cars_data.accelerate) , cars_data.cylinders from cars_data  group by cars_data.cylinders	car_1
select model_list.model from car_names join model_list on car_names.Model = model_list.Model  group by car_names.make  order by count(*) desc limit 1	car_1
select model_list.model from model_list  group by model_list.model  order by count(*) desc limit 1	car_1
select count(*) from cars_data where  cars_data.cylinders > 4	car_1
select count(*) from cars_data where  cars_data.cylinders > 4	car_1
select count(*) from cars_data where  cars_data.year = 1980	car_1
select count(*) from cars_data where  cars_data.year = 1980	car_1
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "American Motor Company"	car_1
select count(*) from model_list join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "American Motor Company"	car_1
select car_makers.fullname , car_makers.id from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) > 3	car_1
select car_makers.maker , car_makers.id from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.maker having  count(*) > 3	car_1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "General Motors" or cars_data.weight > 3500	car_1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  car_makers.fullname = "General Motors" or cars_data.weight > 3500	car_1
select cars_data.year from cars_data where  cars_data.weight between 3000 and 4000	car_1
select distinct cars_data.year from cars_data where  cars_data.weight < 4000 and cars_data.weight > 3000	car_1
select cars_data.horsepower from cars_data   order by cars_data.accelerate desc limit 1	car_1
select cars_data.horsepower from cars_data   order by cars_data.accelerate desc limit 1	car_1
select cars_data.cylinders from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"   order by cars_data.accelerate asc limit 1	car_1
select cars_data.cylinders from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model where  model_list.model = "volvo"   order by cars_data.accelerate asc limit 1	car_1
select count(*) from cars_data where  cars_data.accelerate > (select max(cars_data.accelerate) from cars_data  )	car_1
select count(*) from cars_data where  cars_data.accelerate > (select max(cars_data.accelerate) from cars_data  )	car_1
select count(*) from car_makers  group by car_makers.Id having  count(*) > 2	car_1
select count(*) from car_makers  group by car_makers.Id having  count(*) > 2	car_1
select count(*) from cars_data where  cars_data.cylinders > 6	car_1
select count(*) from cars_data where  cars_data.cylinders > 6	car_1
select car_names.model from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 4   order by cars_data.horsepower desc limit 1	car_1
select car_names.model from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders = 4   order by cars_data.horsepower desc limit 1	car_1
select car_names.makeid , car_names.make from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.horsepower > (select min(cars_data.Horsepower) from cars_data where  cars_data.cylinders > 3  )	car_1
select car_names.make , car_names.model from cars_data join car_names on cars_data.Id = car_names.MakeId where  cars_data.cylinders < 4	car_1
select max(cars_data.mpg) from cars_data where  cars_data.cylinders = 8 or cars_data.year < 1980	car_1
select max(cars_data.mpg) from cars_data where  cars_data.cylinders = 8 or cars_data.year < 1980	car_1
select model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.weight < 3500 and car_makers.fullname != "Ford Motor Company"	car_1
select distinct model_list.model from cars_data join car_names on cars_data.Id = car_names.MakeId join model_list on car_names.Model = model_list.Model join car_makers on model_list.Maker = car_makers.Id where  cars_data.weight < 3500 and car_makers.fullname != "Ford Motor Company"	car_1
select countries.countryname from countries where  countries.countryid not in (select car_makers.Country from car_makers  )	car_1
select countries.countryname from countries where  countries.countryid not in (select car_makers.Country from car_makers  )	car_1
select car_makers.id , car_makers.maker from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) >= 2	car_1
select car_makers.id , car_makers.maker from model_list join car_makers on model_list.Maker = car_makers.Id  group by car_makers.id having  count(*) >= 2	car_1
select countries.countryid , countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryid having  count(*) > 3  union select countries.countryid , countries.countryname from model_list join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  model_list.model = "fiat"	car_1
select countries.countryid , countries.countryname from car_makers join countries on car_makers.Country = countries.CountryId  group by countries.countryid having  count(*) > 3  union select countries.countryid , countries.countryname from model_list join car_makers on model_list.Maker = car_makers.Id join countries on car_makers.Country = countries.CountryId where  model_list.model = "Fiat"	car_1
select airlines.country from airlines where  airlines.airline = "JetBlue Airways"	flight_2
select airlines.country from airlines where  airlines.airline = "JetBlue Airways"	flight_2
select airlines.abbreviation from airlines where  airlines.airline = "JetBlue Airways"	flight_2
select airlines.abbreviation from airlines where  airlines.airline = "JetBlue Airways"	flight_2
select airlines.airline , airlines.abbreviation from airlines where  airlines.country = "USA"	flight_2
select airlines.airline , airlines.abbreviation from airlines where  airlines.country = "USA"	flight_2
select airports.airportcode , airports.airportname from airports where  airports.city = "Anthony"	flight_2
select airports.airportcode , airports.airportname from airports where  airports.city = "Anthony"	flight_2
select count(*) from airlines	flight_2
select count(*) from airlines	flight_2
select count(*) from airports	flight_2
select count(*) from airports	flight_2
select count(*) from flights	flight_2
select count(*) from flights	flight_2
select airlines.airline from airlines where  airlines.abbreviation = "UAL"	flight_2
select airlines.airline from airlines where  airlines.abbreviation = "UAL"	flight_2
select count(*) from airlines where  airlines.country = "USA"	flight_2
select count(*) from airlines where  airlines.country = "USA"	flight_2
select airports.city , airports.country from airports where  airports.airportname = "Alton"	flight_2
select airports.city , airports.country from airports where  airports.airportname = "Alton"	flight_2
select airports.airportname from airports where  airports.airportcode = "AKO"	flight_2
select airports.airportname from airports where  airports.airportcode = "AKO"	flight_2
select airports.airportname from airports where  airports.city = "Aberdeen"	flight_2
select airports.airportname from airports where  airports.city = "Aberdeen"	flight_2
select count(*) from flights where  flights.sourceairport = "APG"	flight_2
select count(*) from flights where  flights.sourceairport = "APG"	flight_2
select count(*) from flights where  flights.destairport = "ATO"	flight_2
select count(*) from flights where  flights.sourceairport = "ATO"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select count(*) from flights where  flights.destairport in (select airports.AirportCode from airports where  airports.city = "Aberdeen"   intersect select airports.AirportCode from airports where  airports.city = "Ashley"   )	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" and airports.airportname = "Ashley"	flight_2
select count(*) from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "JetBlue Airways"	flight_2
select count(*) from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "JetBlue Airways"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode join airlines on airports.Country = airlines.Country where  airports.airportcode = "ASY" and airlines.airline = "United Airlines"	flight_2
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "ASY" and airlines.airline = "United Airlines"	flight_2
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD" and airlines.airline = "United Airlines"	flight_2
select count(*) from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD" and airlines.airline = "United Airlines"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode join airlines on airports.Country = airlines.Country where  airports.city = "Aberdeen" and airlines.airline = "United Airlines"	flight_2
select count(*) from airlines join airports on airlines.uid = airports.AirportCode where  airports.city = "Aberdeen" and airlines.airline = "United Airlines"	flight_2
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1	flight_2
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1	flight_2
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1	flight_2
select airports.city from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.city  order by count(*) desc limit 1	flight_2
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) desc limit 1	flight_2
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) desc limit 1	flight_2
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) asc limit 1	flight_2
select airports.airportcode from flights join airports on flights.DestAirport = airports.AirportCode  group by airports.airportcode  order by count(*) asc limit 1	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline  order by count(*) desc limit 1	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline  order by count(*) desc limit 1	flight_2
select airlines.abbreviation , airlines.country from airlines join flights on airlines.uid = flights.Airline  group by airlines.abbreviation  order by count(*) asc limit 1	flight_2
select airlines.abbreviation , airlines.country from airlines join flights on airlines.uid = flights.Airline  group by airlines.country  order by count(*) asc limit 1	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "AHD"	flight_2
select airlines.airline from airlines join airports on airlines.uid = airports.AirportCode where  airports.airportcode = "AHD"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.destairport = "AHD"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"   intersect select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"   intersect select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"   except select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "CVO"   except select airlines.airline from airlines join flights on airlines.uid = flights.Airline where  flights.sourceairport = "APG"	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) >= 10	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) >= 10	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) < 200	flight_2
select airlines.airline from airlines join flights on airlines.uid = flights.Airline  group by airlines.airline having  count(*) < 200	flight_2
select flights.flightno from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "United Airlines"	flight_2
select flights.flightno from airlines join flights on airlines.uid = flights.Airline where  airlines.airline = "United Airlines"	flight_2
select flights.flightno from flights where  flights.destairport = "APG"	flight_2
select flights.flightno from flights where  flights.sourceairport = "APG"	flight_2
select flights.flightno from flights where  flights.destairport = "APG"	flight_2
select flights.flightno from flights where  flights.destairport = "APG"	flight_2
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select flights.flightno from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" or airports.city = "Abilene"	flight_2
select count(*) from flights join airports on flights.DestAirport = airports.AirportCode where  airports.city = "Aberdeen" or airports.city = "Abilene"	flight_2
select airports.airportname from airports where  airports.airportcode not in (select flights.DestAirport from flights  )	flight_2
select airports.airportname from airports where  airports.airportcode not in (select flights.DestAirport from flights  )	flight_2
select count(*) from employee	employee_hire_evaluation
select count(*) from employee	employee_hire_evaluation
select employee.name from employee   order by employee.age asc	employee_hire_evaluation
select employee.name from employee   order by employee.age asc	employee_hire_evaluation
select employee.city , count(*) from employee  group by employee.city	employee_hire_evaluation
select employee.city , count(*) from employee  group by employee.city	employee_hire_evaluation
select employee.city from employee where  employee.age > 30  group by employee.city having  count(*) > 1	employee_hire_evaluation
select employee.city from employee where  employee.age > 30  group by employee.city having  count(*) > 1	employee_hire_evaluation
select count(*) , shop.location from shop  group by shop.location	employee_hire_evaluation
select shop.location , count(*) from shop  group by shop.location	employee_hire_evaluation
select shop.manager_name , shop.district from shop   order by shop.number_products desc limit 1	employee_hire_evaluation
select shop.manager_name , shop.district from shop   order by shop.number_products desc limit 1	employee_hire_evaluation
select min(shop.number_products) , max(shop.number_products) from shop	employee_hire_evaluation
select min(shop.number_products) , max(shop.number_products) from shop	employee_hire_evaluation
select shop.name , shop.location , shop.district from shop   order by shop.number_products desc	employee_hire_evaluation
select shop.name , shop.location , shop.district from shop   order by shop.number_products desc	employee_hire_evaluation
select shop.name from shop where  shop.number_products > (select avg(shop.number_products) from shop  )	employee_hire_evaluation
select shop.name from shop where  shop.number_products > (select avg(shop.number_products) from shop  )	employee_hire_evaluation
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID  group by evaluation.employee_id  order by count(*) desc limit 1	employee_hire_evaluation
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID  group by evaluation.employee_id  order by count(*) desc limit 1	employee_hire_evaluation
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID   order by evaluation.bonus desc limit 1	employee_hire_evaluation
select employee.name from evaluation join employee on evaluation.Employee_ID = employee.Employee_ID   order by evaluation.bonus desc limit 1	employee_hire_evaluation
select employee.name from employee where  employee.employee_id not in (select evaluation.Employee_ID from evaluation  )	employee_hire_evaluation
select employee.name from employee where  employee.employee_id not in (select evaluation.Employee_ID from evaluation  )	employee_hire_evaluation
select shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by hiring.shop_id  order by count(*) desc limit 1	employee_hire_evaluation
select shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by hiring.shop_id  order by count(*) desc limit 1	employee_hire_evaluation
select shop.name from shop where  shop.shop_id not in (select hiring.Shop_ID from hiring  )	employee_hire_evaluation
select shop.name from shop where  shop.shop_id not in (select hiring.Shop_ID from hiring  )	employee_hire_evaluation
select count(*) , shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by hiring.shop_id	employee_hire_evaluation
select count(*) , shop.name from hiring join shop on hiring.Shop_ID = shop.Shop_ID  group by hiring.shop_id	employee_hire_evaluation
select sum(evaluation.bonus) from evaluation	employee_hire_evaluation
select sum(evaluation.bonus) from evaluation	employee_hire_evaluation
select * from hiring	employee_hire_evaluation
select * from hiring	employee_hire_evaluation
select shop.district from shop where  shop.number_products < 3000   intersect select shop.district from shop where  shop.number_products > 10000	employee_hire_evaluation
select shop.district from shop where  shop.number_products < 3000   intersect select shop.district from shop where  shop.number_products > 10000	employee_hire_evaluation
select count( distinct shop.location) from shop	employee_hire_evaluation
select count( distinct shop.location) from shop	employee_hire_evaluation
select count(*) from Documents	cre_Doc_Template_Mgt
select count(*) from Documents	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name , documents.document_description from Documents	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name , documents.document_description from Documents	cre_Doc_Template_Mgt
select documents.document_name , documents.template_id from Documents where  documents.document_description like "%w%"	cre_Doc_Template_Mgt
select documents.document_name , documents.template_id from Documents where  documents.document_description like "%w%"	cre_Doc_Template_Mgt
select documents.document_id , documents.template_id , documents.document_description from Documents where  documents.document_name = "Robbin CV"	cre_Doc_Template_Mgt
select documents.document_id , documents.template_id , documents.document_description from Documents where  documents.document_name = "Robbin CV"	cre_Doc_Template_Mgt
select count( distinct documents.template_id) from Documents	cre_Doc_Template_Mgt
select count( distinct documents.template_id) from Documents	cre_Doc_Template_Mgt
select count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "PPT"	cre_Doc_Template_Mgt
select count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "PPT"	cre_Doc_Template_Mgt
select documents.template_id , count(*) from Documents  group by documents.template_id	cre_Doc_Template_Mgt
select documents.template_id , count(*) from Documents  group by documents.template_id	cre_Doc_Template_Mgt
select templates.template_id , templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_id  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select documents.template_id , templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by documents.template_id  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select documents.template_id from Documents  group by documents.template_id having  count(*) > 1	cre_Doc_Template_Mgt
select documents.template_id from Documents  group by documents.template_id having  count(*) > 1	cre_Doc_Template_Mgt
select templates.template_id from Templates   except select documents.template_id from Documents	cre_Doc_Template_Mgt
select templates.template_id from Templates   except select documents.template_id from Documents	cre_Doc_Template_Mgt
select count(*) from Templates	cre_Doc_Template_Mgt
select count(*) from Templates	cre_Doc_Template_Mgt
select templates.template_id , templates.version_number , templates.template_type_code from Templates	cre_Doc_Template_Mgt
select templates.template_id , templates.version_number , templates.template_type_code from Templates	cre_Doc_Template_Mgt
select distinct templates.template_type_code from Templates	cre_Doc_Template_Mgt
select distinct templates.template_type_code from Templates	cre_Doc_Template_Mgt
select templates.template_id from Templates where  templates.template_type_code = "PP" or templates.template_type_code = "PPT"	cre_Doc_Template_Mgt
select templates.template_id from Templates where  templates.template_type_code = "PP" or templates.template_type_code = "PPT"	cre_Doc_Template_Mgt
select count(*) from Templates where  templates.template_type_code = "CV"	cre_Doc_Template_Mgt
select count(*) from Templates where  templates.template_type_code = "CV"	cre_Doc_Template_Mgt
select templates.version_number , templates.template_type_code from Templates where  templates.version_number > 5	cre_Doc_Template_Mgt
select templates.version_number , templates.template_type_code from Templates where  templates.version_number > 5	cre_Doc_Template_Mgt
select templates.template_type_code , count(*) from Templates  group by templates.template_type_code	cre_Doc_Template_Mgt
select templates.template_type_code , count(*) from Templates  group by templates.template_type_code	cre_Doc_Template_Mgt
select templates.template_type_code from Templates  group by templates.template_type_code  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select templates.template_type_code from Templates  group by templates.template_type_code  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select templates.template_type_code from Templates  group by templates.template_type_code having  count(*) < 3	cre_Doc_Template_Mgt
select templates.template_type_code from Templates  group by templates.template_type_code having  count(*) < 3	cre_Doc_Template_Mgt
select min(templates.version_number) , templates.template_type_code from Templates  group by templates.template_type_code	cre_Doc_Template_Mgt
select templates.version_number , templates.template_type_code from Templates   order by templates.version_number asc limit 1	cre_Doc_Template_Mgt
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  documents.document_name = "Data base"	cre_Doc_Template_Mgt
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  documents.document_name = "Data base"	cre_Doc_Template_Mgt
select documents.document_name from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "BK"	cre_Doc_Template_Mgt
select documents.document_name from Documents join Templates on Documents.Template_ID = Templates.Template_ID where  templates.template_type_code = "BK"	cre_Doc_Template_Mgt
select templates.template_type_code , count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code	cre_Doc_Template_Mgt
select templates.template_type_code , count(*) from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code	cre_Doc_Template_Mgt
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID  group by templates.template_type_code  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select templates.template_type_code from Templates   except select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID	cre_Doc_Template_Mgt
select templates.template_type_code from Templates   except select templates.template_type_code from Documents join Templates on Documents.Template_ID = Templates.Template_ID	cre_Doc_Template_Mgt
select ref_template_types.template_type_code , ref_template_types.template_type_description from Ref_Template_Types	cre_Doc_Template_Mgt
select ref_template_types.template_type_code , ref_template_types.template_type_description from Ref_Template_Types	cre_Doc_Template_Mgt
select ref_template_types.template_type_description from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  templates.template_type_code = "AD"	cre_Doc_Template_Mgt
select ref_template_types.template_type_description from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  templates.template_type_code = "AD"	cre_Doc_Template_Mgt
select ref_template_types.template_type_code from Ref_Template_Types where  ref_template_types.template_type_description = "Book"	cre_Doc_Template_Mgt
select ref_template_types.template_type_code from Ref_Template_Types where  ref_template_types.template_type_description = "Book"	cre_Doc_Template_Mgt
select distinct ref_template_types.template_type_description from Documents join Templates on Documents.Template_ID = Templates.Template_ID join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code	cre_Doc_Template_Mgt
select distinct ref_template_types.template_type_description from Documents join Templates on Documents.Template_ID = Templates.Template_ID join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code	cre_Doc_Template_Mgt
select templates.template_id from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  ref_template_types.template_type_description = "Presentation"	cre_Doc_Template_Mgt
select templates.template_id from Templates join Ref_Template_Types on Templates.Template_Type_Code = Ref_Template_Types.Template_Type_Code where  ref_template_types.template_type_description = "Presentation"	cre_Doc_Template_Mgt
select count(*) from Paragraphs	cre_Doc_Template_Mgt
select count(*) from Paragraphs	cre_Doc_Template_Mgt
select count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Summer Show"	cre_Doc_Template_Mgt
select count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Summer Show"	cre_Doc_Template_Mgt
select paragraphs.other_details from Paragraphs where  paragraphs.paragraph_text = "Korea"	cre_Doc_Template_Mgt
select paragraphs.other_details from Paragraphs where  paragraphs.paragraph_text like "%Korea%"	cre_Doc_Template_Mgt
select paragraphs.paragraph_id , paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Welcome to NY"	cre_Doc_Template_Mgt
select paragraphs.paragraph_id , paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Welcome to NY"	cre_Doc_Template_Mgt
select paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Customer reviews"	cre_Doc_Template_Mgt
select paragraphs.paragraph_text from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID where  documents.document_name = "Customer reviews"	cre_Doc_Template_Mgt
select paragraphs.document_id , count(*) from Paragraphs  group by paragraphs.document_id  order by count(*) asc	cre_Doc_Template_Mgt
select paragraphs.document_id , count(*) from Paragraphs  group by paragraphs.document_id  order by count(*) asc	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name , count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by paragraphs.document_id	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name , count(*) from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by paragraphs.document_id	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) >= 2	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) >= 2	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by paragraphs.document_id  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select documents.document_id , documents.document_name from Paragraphs join Documents on Paragraphs.Document_ID = Documents.Document_ID  group by paragraphs.document_id  order by count(*) desc limit 1	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id  order by count(*) asc limit 1	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id  order by count(*) asc limit 1	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) between 1 and 2	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs  group by paragraphs.document_id having  count(*) between 1 and 2	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Brazil"   intersect select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Ireland"	cre_Doc_Template_Mgt
select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Brazil"   intersect select paragraphs.document_id from Paragraphs where  paragraphs.paragraph_text = "Ireland"	cre_Doc_Template_Mgt
select count(*) from teacher	course_teach
select count(*) from teacher	course_teach
select teacher.name from teacher   order by teacher.age asc	course_teach
select teacher.name from teacher   order by teacher.age asc	course_teach
select teacher.age , teacher.hometown from teacher	course_teach
select teacher.age , teacher.hometown from teacher	course_teach
select teacher.name from teacher where  teacher.hometown != "Little Lever Urban District"	course_teach
select teacher.name from teacher where  teacher.hometown != "Little Lever Urban District"	course_teach
select teacher.name from teacher where  teacher.age = 32 or teacher.age = 33	course_teach
select teacher.name from teacher where  teacher.age = 32 or teacher.age = 33	course_teach
select teacher.hometown from teacher   order by teacher.age asc limit 1	course_teach
select teacher.hometown from teacher   order by teacher.age asc limit 1	course_teach
select teacher.hometown , count(*) from teacher  group by teacher.hometown	course_teach
select teacher.hometown , count(*) from teacher  group by teacher.hometown	course_teach
select teacher.hometown from teacher  group by teacher.hometown  order by count(*) desc limit 1	course_teach
select teacher.hometown from teacher  group by teacher.hometown  order by count(*) desc limit 1	course_teach
select teacher.hometown from teacher  group by teacher.hometown having  count(*) >= 2	course_teach
select teacher.hometown from teacher  group by teacher.hometown having  count(*) >= 2	course_teach
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID	course_teach
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID	course_teach
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID   order by teacher.name asc	course_teach
select teacher.name , course.course from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID   order by teacher.name asc	course_teach
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID where  course.course = "Math"	course_teach
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID join course on course_arrange.Course_ID = course.Course_ID where  course.course = "Math"	course_teach
select teacher.name , count(*) from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID  group by course_arrange.teacher_id	course_teach
select teacher.name , count(*) from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID  group by teacher.name	course_teach
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID  group by course_arrange.teacher_id having  count(*) >= 2	course_teach
select teacher.name from course_arrange join teacher on course_arrange.Teacher_ID = teacher.Teacher_ID  group by course_arrange.teacher_id having  count(*) >= 2	course_teach
select teacher.name from teacher where  teacher.teacher_id not in (select course_arrange.Teacher_ID from course_arrange  )	course_teach
select teacher.name from teacher where  teacher.teacher_id not in (select course_arrange.Teacher_ID from course_arrange  )	course_teach
select count(*) from visitor where  visitor.age < 30	museum_visit
select visitor.name from visitor where  visitor.level_of_membership > 4   order by visitor.level_of_membership desc	museum_visit
select avg(visitor.age) from visitor where  visitor.level_of_membership > 4	museum_visit
select visitor.name , visitor.level_of_membership from visitor where  visitor.level_of_membership > 4   order by visitor.age desc	museum_visit
select museum.museum_id , museum.name from museum   order by museum.num_of_staff desc limit 1	museum_visit
select avg(museum.num_of_staff) from museum where  museum.open_year < 2009	museum_visit
select museum.open_year , museum.num_of_staff from museum where  museum.name = "Plaza Museum"	museum_visit
select museum.name from museum where  museum.num_of_staff > (select min(museum.num_of_staff) from museum where  museum.open_year > 2010  )	museum_visit
select visit.visitor_id , visitor.name , visitor.age from visit join visitor on visit.visitor_ID = visitor.ID  group by visit.visitor_id having  count(*) > 1	museum_visit
select visitor.id , visitor.name , visitor.level_of_membership from visit join visitor on visit.visitor_ID = visitor.ID  group by visit.visitor_id  order by sum(visit.total_spent) desc limit 1	museum_visit
select museum.museum_id , museum.name from visit join museum on visit.Museum_ID = museum.Museum_ID  group by visit.museum_id  order by count(*) desc limit 1	museum_visit
select museum.name from museum where  museum.museum_id not in (select visit.Museum_ID from visit  )	museum_visit
select visitor.name , visitor.age from visit join visitor on visit.visitor_ID = visitor.ID  group by visit.visitor_id  order by sum(visit.num_of_ticket) desc limit 1	museum_visit
select avg(visit.num_of_ticket) , max(visit.num_of_ticket) from visit	museum_visit
select sum(visit.total_spent) from visit join visitor on visit.visitor_ID = visitor.ID where  visitor.level_of_membership = 1	museum_visit
select visitor.name from visit join visitor on visit.visitor_ID = visitor.ID join museum on visit.Museum_ID = museum.Museum_ID where  museum.open_year < 2009   intersect select visitor.name from visit join visitor on visit.visitor_ID = visitor.ID join museum on visit.Museum_ID = museum.Museum_ID where  museum.open_year > 2011	museum_visit
select count(*) from visit where  visit.museum_id not in (select museum.Museum_ID from museum where  museum.open_year > 2010  )	museum_visit
select count(*) from museum where  museum.open_year > 2013 or museum.open_year < 2008	museum_visit
select count(*) from players	wta_1
select count(*) from players	wta_1
select count(*) from matches	wta_1
select count(*) from matches	wta_1
select players.first_name , players.birth_date from players where  players.country_code = "USA"	wta_1
select players.first_name , players.birth_date from players where  players.country_code = "USA"	wta_1
select avg(matches.loser_age) , avg(matches.winner_age) from matches	wta_1
select avg(matches.loser_age) , avg(matches.winner_age) from matches	wta_1
select avg(matches.winner_rank) from matches	wta_1
select avg(matches.winner_rank) from matches	wta_1
select min(matches.loser_rank) from matches	wta_1
select matches.loser_rank from matches   order by matches.loser_rank desc limit 1	wta_1
select count( distinct players.country_code) from players	wta_1
select count( distinct players.country_code) from players	wta_1
select count( distinct matches.loser_name) from matches	wta_1
select count( distinct matches.loser_name) from matches	wta_1
select matches.tourney_name from matches  group by matches.tourney_name having  count(*) > 10	wta_1
select matches.tourney_name from matches  group by matches.tourney_name having  count(*) > 10	wta_1
select matches.winner_name from matches where  matches.year = 2013   intersect select matches.winner_name from matches where  matches.year = 2016	wta_1
select players.first_name , players.last_name from matches join players on matches.winner_id = players.player_id where  matches.year = 2013   intersect select players.first_name , players.last_name from matches join players on matches.winner_id = players.player_id where  matches.year = 2016	wta_1
select count(*) from matches where  matches.year = 2013 or matches.year = 2016	wta_1
select count(*) from matches where  matches.year = 2013 or matches.year = 2016	wta_1
select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships"   intersect select players.country_code , players.first_name from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "Australian Open"	wta_1
select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships"   intersect select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "Australian Open"	wta_1
select players.first_name , players.country_code from players   order by players.birth_date desc limit 1	wta_1
select players.first_name , players.country_code from matches join players on matches.winner_id = players.player_id   order by matches.winner_age desc limit 1	wta_1
select players.first_name , players.last_name from players   order by players.birth_date asc	wta_1
select players.first_name , players.last_name from players   order by players.birth_date asc	wta_1
select players.first_name , players.last_name from players where  players.hand = "left"   order by players.birth_date asc	wta_1
select players.first_name , players.last_name from players where  players.hand = "left"   order by players.birth_date asc	wta_1
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id  group by rankings.player_id  order by count(*) desc limit 1	wta_1
select players.first_name , players.country_code from rankings join players on rankings.player_id = players.player_id  group by rankings.player_id  order by count(*) desc limit 1	wta_1
select matches.year from matches  group by matches.year  order by count(*) desc limit 1	wta_1
select matches.year from matches  group by matches.year  order by count(*) desc limit 1	wta_1
select matches.winner_name , matches.winner_rank_points from matches  group by matches.winner_name  order by count(*) desc limit 1	wta_1
select matches.winner_name , matches.winner_rank_points from matches  group by matches.winner_name  order by count(*) desc limit 1	wta_1
select matches.winner_name from matches where  matches.tourney_name = "Australian Open"   order by matches.winner_rank_points desc limit 1	wta_1
select matches.winner_name from matches where  matches.tourney_name = "Australian Open"   order by matches.winner_rank_points desc limit 1	wta_1
select matches.loser_name , matches.winner_name from matches   order by matches.minutes desc limit 1	wta_1
select matches.winner_name , matches.loser_name from matches   order by matches.minutes desc limit 1	wta_1
select players.first_name , avg(rankings.ranking) from rankings join players on rankings.player_id = players.player_id  group by players.first_name	wta_1
select players.first_name , avg(rankings.ranking) from rankings join players on rankings.player_id = players.player_id  group by players.first_name	wta_1
select sum(rankings.ranking_points) , players.first_name from rankings join players on rankings.player_id = players.player_id  group by players.first_name	wta_1
select players.first_name , sum(rankings.ranking_points) from rankings join players on rankings.player_id = players.player_id  group by players.first_name	wta_1
select players.country_code , count(*) from players  group by players.country_code	wta_1
select players.country_code , count(*) from players  group by players.country_code	wta_1
select players.country_code from players  group by players.country_code  order by count(*) desc limit 1	wta_1
select players.country_code from players  group by players.country_code  order by count(*) desc limit 1	wta_1
select players.country_code from players  group by players.country_code having  count(*) > 50	wta_1
select players.country_code from players  group by players.country_code having  count(*) > 50	wta_1
select sum(rankings.tours) , rankings.ranking_date from rankings  group by rankings.ranking_date	wta_1
select rankings.ranking_date , sum(rankings.tours) from rankings  group by rankings.ranking_date	wta_1
select matches.year , count(*) from matches  group by matches.year	wta_1
select matches.year , count(*) from matches  group by matches.year	wta_1
select matches.winner_name , matches.winner_rank from matches   order by matches.winner_age asc limit 3	wta_1
select matches.winner_name , matches.winner_rank from matches   order by matches.winner_age asc limit 3	wta_1
select count(*) from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships" and players.hand = "left"	wta_1
select count(*) from matches join players on matches.winner_id = players.player_id where  matches.tourney_name = "WTA Championships" and players.hand = "left"	wta_1
select players.first_name , players.country_code , players.birth_date from matches join players on matches.winner_id = players.player_id   order by matches.winner_rank_points desc limit 1	wta_1
select players.first_name , players.country_code , players.birth_date from matches join players on matches.winner_id = players.player_id  group by players.player_id  order by sum(matches.winner_rank_points) desc limit 1	wta_1
select players.hand , count(*) from players  group by players.hand	wta_1
select players.hand , count(*) from players  group by players.hand	wta_1
select count(*) from ship where  ship.disposition_of_ship = "Captured"	battle_death
select ship.name , ship.tonnage from ship   order by ship.name desc	battle_death
select battle.name , battle.date , battle.result from battle	battle_death
select max(death.caused_by_ship_id) , min(death.caused_by_ship_id) from death  group by death.caused_by_ship_id	battle_death
select death.id , avg(death.injured) from death  group by death.id	battle_death
select death.injured , death.killed from death join ship on death.caused_by_ship_id = ship.id where  ship.tonnage = "t"	battle_death
select battle.name , battle.result from battle where  battle.bulgarian_commander != "Boril"	battle_death
select distinct battle.id , battle.name from ship join battle on ship.lost_in_battle = battle.id where  ship.ship_type = "Brig"	battle_death
select battle.id , battle.name from death join ship on death.caused_by_ship_id = ship.id join battle on ship.lost_in_battle = battle.id  group by battle.id having  sum(death.killed) > 10	battle_death
select ship.id , ship.name from death join ship on death.caused_by_ship_id = ship.id  group by ship.id  order by sum(death.injured) desc limit 1	battle_death
select distinct battle.name from battle where  battle.bulgarian_commander = "Kaloyan" and battle.latin_commander = "Baldwin I"	battle_death
select count( distinct battle.result) from battle	battle_death
select count(*) from battle where  battle.id not in (select ship.lost_in_battle from ship where  ship.tonnage = "225"  )	battle_death
select battle.name , battle.date from ship join battle on ship.lost_in_battle = battle.id where  ship.name = "Lettice"   intersect select battle.name , battle.date from ship join battle on ship.lost_in_battle = battle.id where  ship.name = "HMS Atalanta"	battle_death
select battle.name , battle.result , battle.bulgarian_commander from battle   except select battle.name , battle.result , battle.bulgarian_commander from ship join battle on ship.lost_in_battle = battle.id where  ship.location = "English Channel"	battle_death
select death.note from death where  death.note like "%East%"	battle_death
select * from Addresses where  addresses.line_1 = "1" and addresses.line_2 = "2"	student_transcripts_tracking
select addresses.line_1 , addresses.line_2 from Addresses	student_transcripts_tracking
select count(*) from Courses	student_transcripts_tracking
select count(*) from Courses	student_transcripts_tracking
select courses.course_description from Courses where  courses.course_name = "math"	student_transcripts_tracking
select courses.course_description from Courses where  courses.course_name = "math"	student_transcripts_tracking
select addresses.zip_postcode from Addresses where  addresses.city = "Port Chelsea"	student_transcripts_tracking
select addresses.zip_postcode from Addresses where  addresses.city = "Port Chelsea"	student_transcripts_tracking
select departments.department_name , degree_programs.department_id from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id  group by degree_programs.department_id  order by count(*) desc limit 1	student_transcripts_tracking
select departments.department_name , degree_programs.department_id from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id  group by degree_programs.department_id  order by count(*) desc limit 1	student_transcripts_tracking
select count( distinct degree_programs.department_id) from Degree_Programs	student_transcripts_tracking
select count( distinct degree_programs.department_id) from Degree_Programs	student_transcripts_tracking
select count( distinct degree_programs.degree_summary_name) from Degree_Programs	student_transcripts_tracking
select count( distinct degree_programs.degree_summary_name) from Degree_Programs	student_transcripts_tracking
select count(*) from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id where  departments.department_name = "ENGINEERING"	student_transcripts_tracking
select count(*) from Degree_Programs join Departments on Degree_Programs.department_id = Departments.department_id where  departments.department_name = "Engineering"	student_transcripts_tracking
select sections.section_name , sections.section_description from Sections	student_transcripts_tracking
select sections.section_name , sections.section_description from Sections	student_transcripts_tracking
select courses.course_name , sections.course_id from Sections join Courses on Sections.course_id = Courses.course_id  group by sections.course_id having  count(*) <= 2	student_transcripts_tracking
select courses.course_name , sections.course_id from Sections join Courses on Sections.course_id = Courses.course_id  group by sections.course_id having  count(*) < 2	student_transcripts_tracking
select sections.section_name from Sections   order by sections.section_name desc	student_transcripts_tracking
select sections.section_name from Sections   order by sections.section_name desc	student_transcripts_tracking
select semesters.semester_name , student_enrolment.semester_id from Student_Enrolment join Semesters on Student_Enrolment.semester_id = Semesters.semester_id  group by student_enrolment.semester_id  order by count(*) desc limit 1	student_transcripts_tracking
select semesters.semester_name , student_enrolment.semester_id from Student_Enrolment join Semesters on Student_Enrolment.semester_id = Semesters.semester_id  group by student_enrolment.semester_id  order by count(*) desc limit 1	student_transcripts_tracking
select departments.department_description from Departments where  departments.department_name like "%the computer%"	student_transcripts_tracking
select departments.department_description from Departments where  departments.department_name like "%computer%"	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name , student_enrolment.semester_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.semester_id having  count(*) = 2	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_id from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_id having  count(*) = 2	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Bachelor"	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id where  student_enrolment.degree_program_id = "B"	student_transcripts_tracking
select student_enrolment.degree_program_id from Student_Enrolment  group by student_enrolment.degree_program_id  order by count(*) desc limit 1	student_transcripts_tracking
select degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by degree_programs.degree_summary_name  order by count(*) desc limit 1	student_transcripts_tracking
select student_enrolment.degree_program_id , degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by student_enrolment.degree_program_id  order by count(*) desc limit 1	student_transcripts_tracking
select student_enrolment.degree_program_id , degree_programs.degree_summary_name from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id  group by student_enrolment.degree_program_id  order by count(*) desc limit 1	student_transcripts_tracking
select student_enrolment.student_id , students.first_name , students.middle_name , students.last_name , count(*) from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_id  order by count(*) desc limit 1	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name , student_enrolment.student_id , count(*) from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id  group by student_enrolment.student_id  order by count(*) desc limit 1	student_transcripts_tracking
select semesters.semester_name from Semesters where  semesters.semester_id not in (select Student_Enrolment.semester_id from Student_Enrolment  )	student_transcripts_tracking
select semesters.semester_name from Semesters where  semesters.semester_id not in (select Student_Enrolment.semester_id from Student_Enrolment  )	student_transcripts_tracking
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id	student_transcripts_tracking
select distinct courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id	student_transcripts_tracking
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id  group by courses.course_name  order by count(*) desc limit 1	student_transcripts_tracking
select courses.course_name from Student_Enrolment_Courses join Courses on Student_Enrolment_Courses.course_id = Courses.course_id  group by courses.course_name  order by count(*) desc limit 1	student_transcripts_tracking
select students.last_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.state_province_county = "North Carolina"   except select students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id	student_transcripts_tracking
select students.last_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.state_province_county = "NC"   except select students.last_name from Student_Enrolment join Students on Student_Enrolment.student_id = Students.student_id	student_transcripts_tracking
select transcripts.transcript_date , transcripts.transcript_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id  group by transcripts.transcript_id having  count(*) >= 2	student_transcripts_tracking
select transcripts.transcript_date , transcripts.transcript_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id  group by transcripts.transcript_id having  count(*) >= 2	student_transcripts_tracking
select students.cell_mobile_number from Students where  students.first_name = "Timmothy" and students.last_name = "Ward"	student_transcripts_tracking
select students.cell_mobile_number from Students where  students.first_name = "Timmothy" and students.last_name = "Ward"	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1	student_transcripts_tracking
select students.first_name , students.middle_name , students.last_name from Students   order by students.date_first_registered asc limit 1	student_transcripts_tracking
select students.first_name from Students where  students.permanent_address_id != students.current_address_id	student_transcripts_tracking
select students.first_name from Students where  students.permanent_address_id != students.current_address_id	student_transcripts_tracking
select addresses.address_id , addresses.line_1 , addresses.line_2 from Students join Addresses on Students.permanent_address_id = Addresses.address_id  group by addresses.address_id  order by count(*) desc limit 1	student_transcripts_tracking
select addresses.address_id , addresses.line_1 , addresses.line_2 from Students join Addresses on Students.permanent_address_id = Addresses.address_id  group by addresses.address_id  order by count(*) desc limit 1	student_transcripts_tracking
select avg(transcripts.transcript_date) from Transcripts	student_transcripts_tracking
select avg(transcripts.transcript_date) from Transcripts	student_transcripts_tracking
select transcripts.transcript_date , transcripts.other_details from Transcripts   order by transcripts.transcript_date asc limit 1	student_transcripts_tracking
select transcripts.transcript_date , transcripts.other_details from Transcripts   order by transcripts.transcript_date asc limit 1	student_transcripts_tracking
select count(*) from Transcripts	student_transcripts_tracking
select count(*) from Transcripts	student_transcripts_tracking
select transcripts.transcript_date from Transcripts   order by transcripts.transcript_date desc limit 1	student_transcripts_tracking
select transcripts.transcript_date from Transcripts   order by transcripts.transcript_date desc limit 1	student_transcripts_tracking
select count( distinct transcripts.transcript_id) , student_enrolment_courses.student_enrolment_id from Transcript_Contents join Transcripts on Transcript_Contents.transcript_id = Transcripts.transcript_id join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id  group by transcripts.transcript_id  order by count( distinct transcripts.transcript_id) desc limit 1	student_transcripts_tracking
select count( distinct transcript_contents.transcript_id) , student_enrolment_courses.student_enrolment_id from Transcript_Contents join Student_Enrolment_Courses on Transcript_Contents.student_course_id = Student_Enrolment_Courses.student_course_id  group by student_enrolment_courses.student_enrolment_id  order by count( distinct transcript_contents.transcript_id) desc limit 1	student_transcripts_tracking
select transcripts.transcript_date , transcripts.transcript_id from Transcripts  group by transcripts.transcript_id  order by count(*) asc limit 1	student_transcripts_tracking
select transcripts.transcript_date , transcripts.transcript_id from Transcripts  group by transcripts.transcript_id  order by count(*) asc limit 1	student_transcripts_tracking
select student_enrolment.semester_id from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Master"   intersect select student_enrolment.semester_id from Student_Enrolment join Degree_Programs on Student_Enrolment.degree_program_id = Degree_Programs.degree_program_id where  degree_programs.degree_summary_name = "Bachelor"	student_transcripts_tracking
select student_enrolment.semester_id from Student_Enrolment where  student_enrolment.degree_program_id = "MA"   intersect select student_enrolment.semester_id from Student_Enrolment where  student_enrolment.degree_program_id = "Bachelor"	student_transcripts_tracking
select count( distinct students.current_address_id) from Students	student_transcripts_tracking
select distinct addresses.address_id from Students join Addresses on Students.permanent_address_id = Addresses.address_id	student_transcripts_tracking
select students.other_student_details from Students   order by students.other_student_details desc	student_transcripts_tracking
select students.other_student_details from Students   order by students.other_student_details desc	student_transcripts_tracking
select sections.section_description from Sections where  sections.section_name = "h"	student_transcripts_tracking
select sections.section_description from Sections where  sections.section_name = "h"	student_transcripts_tracking
select students.first_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.country = "Haiti" or students.cell_mobile_number = "09700166582"	student_transcripts_tracking
select students.first_name from Students join Addresses on Students.permanent_address_id = Addresses.address_id where  addresses.country = "Haiti" or students.cell_mobile_number = "09700166582"	student_transcripts_tracking
select cartoon.title from Cartoon   order by cartoon.title asc	tvshow
select cartoon.title from Cartoon   order by cartoon.title asc	tvshow
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones"	tvshow
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones"	tvshow
select count(*) from Cartoon where  cartoon.written_by = "Joseph Kuhr"	tvshow
select count(*) from Cartoon where  cartoon.written_by = "Joseph Kuhr"	tvshow
select cartoon.title , cartoon.directed_by from Cartoon   order by cartoon.original_air_date asc	tvshow
select cartoon.title , cartoon.directed_by from Cartoon   order by cartoon.original_air_date asc	tvshow
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones" or cartoon.directed_by = "Brandon Vietti"	tvshow
select cartoon.title from Cartoon where  cartoon.directed_by = "Ben Jones" or cartoon.directed_by = "Brandon Vietti"	tvshow
select tv_channel.country , count(*) from TV_Channel  group by tv_channel.country  order by count(*) desc limit 1	tvshow
select tv_channel.country , count(*) from TV_Channel  group by tv_channel.country  order by count(*) desc limit 1	tvshow
select count( distinct tv_channel.series_name) , count( distinct tv_channel.content) from TV_Channel	tvshow
select count( distinct tv_channel.series_name) , count( distinct tv_channel.content) from TV_Channel	tvshow
select tv_channel.content from TV_Channel where  tv_channel.series_name = "Sky Radio"	tvshow
select tv_channel.content from TV_Channel where  tv_channel.series_name = "Sky Radio"	tvshow
select tv_channel.package_option from TV_Channel where  tv_channel.series_name = "Sky Radio"	tvshow
select tv_channel.package_option from TV_Channel where  tv_channel.series_name = "Sky Radio"	tvshow
select count(*) from TV_Channel where  tv_channel.language = "English"	tvshow
select count(*) from TV_Channel where  tv_channel.language = "English"	tvshow
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language  order by count(*) asc limit 1	tvshow
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language  order by count(*) asc limit 1	tvshow
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language	tvshow
select tv_channel.language , count(*) from TV_Channel  group by tv_channel.language	tvshow
select tv_channel.series_name from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.title = "The Rise of the Blue Beetle!"	tvshow
select tv_channel.series_name from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.title = "The Rise of the Blue Beetle!"	tvshow
select cartoon.title from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"	tvshow
select cartoon.title from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"	tvshow
select tv_series.episode from TV_series   order by tv_series.rating asc	tvshow
select tv_series.episode from TV_series   order by tv_series.rating asc	tvshow
select tv_series.episode , tv_series.rating from TV_series   order by tv_series.rating desc limit 3	tvshow
select tv_series.episode , tv_series.rating from TV_series   order by tv_series.rating desc limit 3	tvshow
select min(tv_series.share) , max(tv_series.share) from TV_series	tvshow
select max(tv_series.share) , min(tv_series.share) from TV_series	tvshow
select tv_series.air_date from TV_series where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_series.air_date from TV_series where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_series.weekly_rank from TV_series where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_series.weekly_rank from TV_series where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_channel.series_name from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_channel.series_name from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_series.episode = "A Love of a Lifetime"	tvshow
select tv_series.episode from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"	tvshow
select tv_series.episode from TV_series join TV_Channel on TV_series.Channel = TV_Channel.id where  tv_channel.series_name = "Sky Radio"	tvshow
select cartoon.directed_by , count(*) from Cartoon  group by cartoon.directed_by	tvshow
select cartoon.directed_by , count(*) from Cartoon  group by cartoon.directed_by	tvshow
select cartoon.production_code , cartoon.channel from Cartoon   order by cartoon.original_air_date desc limit 1	tvshow
select cartoon.production_code , cartoon.channel from Cartoon   order by cartoon.original_air_date desc limit 1	tvshow
select tv_channel.package_option , tv_channel.series_name from TV_Channel where  tv_channel.hight_definition_tv = "Yes"	tvshow
select tv_channel.package_option , tv_channel.series_name from TV_Channel where  tv_channel.hight_definition_tv = "Yes"	tvshow
select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"	tvshow
select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"	tvshow
select tv_channel.country from TV_Channel   except select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"	tvshow
select tv_channel.country from TV_Channel   except select tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.written_by = "Todd Casey"	tvshow
select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"   intersect select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Michael Chang"	tvshow
select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"   intersect select tv_channel.series_name , tv_channel.country from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Michael Chang"	tvshow
select tv_channel.pixel_aspect_ratio_par , tv_channel.country from TV_Channel where  tv_channel.language != "English"	tvshow
select tv_channel.pixel_aspect_ratio_par , tv_channel.country from TV_Channel where  tv_channel.language != "English"	tvshow
select tv_channel.id from TV_Channel  group by tv_channel.country having  count(*) > 2	tvshow
select tv_channel.id from TV_Channel  group by tv_channel.id having  count(*) > 2	tvshow
select tv_channel.id from TV_Channel   except select cartoon.channel from Cartoon where  cartoon.directed_by = "Ben Jones"	tvshow
select tv_channel.id from TV_Channel   except select cartoon.channel from Cartoon where  cartoon.directed_by = "Ben Jones"	tvshow
select tv_channel.package_option from TV_Channel   except select tv_channel.package_option from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"	tvshow
select tv_channel.package_option from TV_Channel   except select tv_channel.package_option from Cartoon join TV_Channel on Cartoon.Channel = TV_Channel.id where  cartoon.directed_by = "Ben Jones"	tvshow
select count(*) from poker_player	poker_player
select count(*) from poker_player	poker_player
select poker_player.earnings from poker_player   order by poker_player.earnings desc	poker_player
select poker_player.earnings from poker_player   order by poker_player.earnings desc	poker_player
select poker_player.final_table_made , poker_player.best_finish from poker_player	poker_player
select poker_player.final_table_made , poker_player.best_finish from poker_player	poker_player
select avg(poker_player.earnings) from poker_player	poker_player
select avg(poker_player.earnings) from poker_player	poker_player
select poker_player.money_rank from poker_player   order by poker_player.earnings desc limit 1	poker_player
select poker_player.money_rank from poker_player   order by poker_player.earnings desc limit 1	poker_player
select max(poker_player.final_table_made) from poker_player where  poker_player.earnings < 200000	poker_player
select max(poker_player.final_table_made) from poker_player where  poker_player.earnings < 200000	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID where  poker_player.earnings > 300000	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID where  poker_player.earnings > 300000	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.final_table_made asc	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.final_table_made asc	poker_player
select people.birth_date from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings asc limit 1	poker_player
select people.birth_date from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings asc limit 1	poker_player
select poker_player.money_rank from poker_player join people on poker_player.People_ID = people.People_ID   order by people.height desc limit 1	poker_player
select poker_player.money_rank from poker_player join people on poker_player.People_ID = people.People_ID   order by people.height desc limit 1	poker_player
select avg(poker_player.earnings) from poker_player join people on poker_player.People_ID = people.People_ID where  people.height > 200	poker_player
select avg(poker_player.earnings) from poker_player join people on poker_player.People_ID = people.People_ID where  people.height > 200	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings desc	poker_player
select people.name from poker_player join people on poker_player.People_ID = people.People_ID   order by poker_player.earnings desc	poker_player
select people.nationality , count(*) from people  group by people.nationality	poker_player
select people.nationality , count(*) from people  group by people.nationality	poker_player
select people.nationality from people  group by people.nationality  order by count(*) desc limit 1	poker_player
select people.nationality from people  group by people.nationality  order by count(*) desc limit 1	poker_player
select people.nationality from people  group by people.nationality having  count(*) >= 2	poker_player
select people.nationality from people  group by people.nationality having  count(*) >= 2	poker_player
select people.name , people.birth_date from people   order by people.name asc	poker_player
select people.name , people.birth_date from people   order by people.name asc	poker_player
select people.name from people where  people.nationality != "Russia"	poker_player
select people.name from people where  people.nationality != "Russia"	poker_player
select people.name from people   except select people.name from poker_player join people on poker_player.People_ID = people.People_ID	poker_player
select people.name from people   except select people.name from poker_player join people on poker_player.People_ID = people.People_ID	poker_player
select count( distinct people.nationality) from people	poker_player
select count( distinct people.nationality) from people	poker_player
select count(*) from AREA_CODE_STATE	voter_1
select contestants.contestant_number , contestants.contestant_name from CONTESTANTS   order by contestants.contestant_name desc	voter_1
select votes.vote_id , votes.phone_number , votes.state from VOTES	voter_1
select max(area_code_state.area_code) , min(area_code_state.area_code) from AREA_CODE_STATE	voter_1
select votes.created from VOTES where  votes.state = "CA"   order by votes.created desc limit 1	voter_1
select contestants.contestant_name from CONTESTANTS where  contestants.contestant_name != "Jessie Alloway"	voter_1
select distinct votes.state , votes.created from VOTES	voter_1
select contestants.contestant_number , contestants.contestant_name from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number  group by votes.contestant_number having  count(*) >= 2	voter_1
select contestants.contestant_number , contestants.contestant_name from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number  group by votes.contestant_number  order by count(*) asc limit 1	voter_1
select count(*) from VOTES where  votes.state = "NY" or votes.state = "CA"	voter_1
select count(*) from CONTESTANTS where  contestants.contestant_number not in (select VOTES.contestant_number from VOTES  )	voter_1
select area_code_state.area_code from VOTES join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state  group by area_code_state.area_code  order by count(*) desc limit 1	voter_1
select votes.created , votes.state , votes.phone_number from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number where  contestants.contestant_name = "Tabatha Gehling"	voter_1
select area_code_state.area_code from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state where  contestants.contestant_name = "Tabatha Gehling"   intersect select area_code_state.area_code from VOTES join CONTESTANTS on VOTES.contestant_number = CONTESTANTS.contestant_number join AREA_CODE_STATE on VOTES.state = AREA_CODE_STATE.state where  contestants.contestant_name = "Kelly Clauss"	voter_1
select contestants.contestant_name from CONTESTANTS where  contestants.contestant_name like "%Al%"	voter_1
select country.name from country where  country.indepyear > 1950	world_1
select country.name from country where  country.indepyear > 1950	world_1
select count(*) from country where  country.governmentform = "Republic"	world_1
select count(*) from country where  country.governmentform = "Republic"	world_1
select sum(country.surfacearea) from country where  country.region = "Caribbean"	world_1
select sum(country.surfacearea) from country where  country.region = "Carribean"  group by country.region	world_1
select country.continent from country where  country.name = "Anguilla"	world_1
select country.continent from country where  country.name = "Anguilla"	world_1
select country.region from city join country on city.CountryCode = country.Code where  city.name = "Kabul"	world_1
select country.region from city join country on city.CountryCode = country.Code where  city.name = "Kabul"	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"   order by countrylanguage.percentage desc limit 1	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"  group by countrylanguage.language  order by count(*) desc limit 1	world_1
select country.population , country.lifeexpectancy from country where  country.name = "Brazil"	world_1
select country.population , country.lifeexpectancy from country where  country.name = "Brazil"	world_1
select country.region , country.population from country where  country.name = "Angola"	world_1
select country.region , country.population from country where  country.name = "Angola"	world_1
select avg(country.lifeexpectancy) from country where  country.region = "Central Africa"	world_1
select avg(country.lifeexpectancy) from country where  country.region = "Central Africa"	world_1
select country.name from country where  country.continent = "Asia"   order by country.lifeexpectancy asc limit 1	world_1
select country.name from country where  country.continent = "Asia"   order by country.lifeexpectancy asc limit 1	world_1
select sum(country.population) , max(country.gnp) from country where  country.continent = "Asia"	world_1
select country.population , country.gnp from country where  country.continent = "Asia"   order by country.gnp desc limit 1	world_1
select avg(country.lifeexpectancy) from country where  country.governmentform = "Republic" and country.continent = "Africa"	world_1
select avg(country.lifeexpectancy) from country where  country.continent = "Africa" and country.governmentform = "Republic"	world_1
select sum(country.surfacearea) from country where  country.continent = "Asia" or country.continent = "Europe"	world_1
select sum(country.surfacearea) from country where  country.continent = "Asia" or country.continent = "Europe"	world_1
select sum(city.population) from city where  city.district = "Gelderland"	world_1
select sum(city.population) from city where  city.district = "Gelderland"	world_1
select avg(country.gnp) , sum(country.population) from country where  country.governmentform = "US Territory"	world_1
select avg(country.gnp) , sum(country.population) from country where  country.governmentform = "US Territory"	world_1
select count( distinct countrylanguage.language) from countrylanguage	world_1
select count( distinct countrylanguage.language) from countrylanguage	world_1
select count( distinct country.governmentform) from country where  country.continent = "Africa"	world_1
select count( distinct country.governmentform) from country where  country.continent = "Africa"	world_1
select count( distinct countrylanguage.language) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"	world_1
select count( distinct countrylanguage.language) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Aruba"	world_1
select count( distinct countrylanguage.isofficial) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Afghanistan"	world_1
select count( distinct countrylanguage.isofficial) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.name = "Afghanistan"	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.name  order by count(*) desc limit 1	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.name  order by count(*) desc limit 1	world_1
select country.continent from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.continent  order by count(*) desc limit 1	world_1
select country.continent from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.continent  order by count(*) desc limit 1	world_1
select count(*) from countrylanguage where  countrylanguage.countrycode in (select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "English"   intersect select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "Dutch"   )	world_1
select count(*) from countrylanguage where  countrylanguage.countrycode in (select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "English"   intersect select countrylanguage.CountryCode from countrylanguage where  countrylanguage.language = "Dutch"   )	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"	world_1
select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English"   intersect select country.name from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "French"	world_1
select count( distinct country.continent) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Chinese"	world_1
select count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Chinese"	world_1
select country.region from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"	world_1
select country.region from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language = "Dutch" or countrylanguage.language = "English"	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English" or countrylanguage.language = "Dutch"	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.continent = "Asia"  group by countrylanguage.language  order by count(*) desc limit 1	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.continent = "Asia"  group by countrylanguage.language  order by count(*) desc limit 1	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.governmentform = "Republic"  group by countrylanguage.language having  count(*) = 1	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.governmentform = "Republic"  group by countrylanguage.language having  count(*) = 1	world_1
select city.population from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language = "English"   order by city.population desc limit 1	world_1
select city.population from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  countrylanguage.language = "English"   order by city.population desc limit 1	world_1
select country.name , country.population , country.lifeexpectancy from country where  country.continent = "Asia"   order by country.surfacearea desc limit 1	world_1
select country.name , country.population , country.lifeexpectancy from country where  country.continent = "Asia"   order by country.surfacearea desc limit 1	world_1
select avg(country.lifeexpectancy) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"	world_1
select avg(country.lifeexpectancy) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"	world_1
select sum(country.population) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"	world_1
select sum(country.population) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"	world_1
select countrylanguage.language from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.headofstate = "Beatrix"	world_1
select countrylanguage.isofficial from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.headofstate = "Beatrix"	world_1
select count( distinct countrylanguage.isofficial) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.indepyear < 1930	world_1
select count( distinct countrylanguage.isofficial) from countrylanguage join country on countrylanguage.CountryCode = country.Code where  country.indepyear < 1930	world_1
select country.name from country where  country.surfacearea > (select max(country.surfacearea) from country where  country.continent = "Europe"  )	world_1
select country.name from country where  country.surfacearea > (select max(country.surfacearea) from country where  country.continent = "Europe"  )	world_1
select country.name from country where  country.population < (select max(country.population) from country where  country.continent = "Africa"  )	world_1
select country.name from country where  country.population < (select max(country.population) from country where  country.continent = "Africa"  )	world_1
select country.name from country where  country.population > (select max(country.population) from country where  country.continent = "Africa"  )	world_1
select country.name from country where  country.population > (select max(country.population) from country where  country.continent = "Africa"  )	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"	world_1
select country.code from countrylanguage join country on countrylanguage.CountryCode = country.Code where  countrylanguage.language != "English"	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language != "English"	world_1
select country.code from country where  country.governmentform != "Republic"   except select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English"	world_1
select country.code from country where  country.governmentform != "Republic"   except select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "English"	world_1
select city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  country.continent = "Europe" and countrylanguage.language != "English"	world_1
select city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  country.continent = "Europe" and countrylanguage.language != "English"	world_1
select distinct city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  country.continent = "Asia" and countrylanguage.language = "Chinese"	world_1
select distinct city.name from city join country on city.CountryCode = country.Code join countrylanguage on country.Code = countrylanguage.CountryCode where  country.continent = "Asia" and countrylanguage.language = "Chinese"	world_1
select country.name , country.indepyear , country.surfacearea from country   order by country.population asc limit 1	world_1
select country.name , country.indepyear , country.surfacearea from country   order by country.population asc limit 1	world_1
select country.population , country.name , country.headofstate from country   order by country.surfacearea desc limit 1	world_1
select country.name , country.population , country.headofstate from country   order by country.surfacearea desc limit 1	world_1
select country.name , count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.name having  count(*) >= 3	world_1
select country.name , count(*) from countrylanguage join country on countrylanguage.CountryCode = country.Code  group by country.name having  count(*) > 2	world_1
select count(*) , city.district from city where  city.population > (select avg(city.population) from city  )  group by city.district	world_1
select count(*) , city.district from city where  city.population > (select avg(city.population) from city  )  group by city.district	world_1
select country.governmentform , sum(country.population) from country  group by country.governmentform having  avg(country.lifeexpectancy) > 72	world_1
select country.governmentform , sum(country.population) from country  group by country.governmentform having  avg(country.lifeexpectancy) > 72	world_1
select avg(country.lifeexpectancy) , sum(country.population) , country.continent from country  group by country.continent having  avg(country.lifeexpectancy) < 72	world_1
select country.continent , sum(country.population) , avg(country.lifeexpectancy) from country  group by country.continent having  avg(country.lifeexpectancy) < 72	world_1
select country.name , country.surfacearea from country   order by country.surfacearea desc limit 5	world_1
select country.name , country.surfacearea from country   order by country.population desc limit 5	world_1
select country.name from country   order by country.population desc limit 3	world_1
select country.name from country   order by country.population desc limit 3	world_1
select country.name from country   order by country.population asc limit 3	world_1
select country.name from country   order by country.population asc limit 3	world_1
select count(*) from country where  country.continent = "Asia"	world_1
select count(*) from country where  country.continent = "Asia"	world_1
select country.name from country where  country.continent = "Europe" and country.population = 80000	world_1
select country.name from country where  country.continent = "Europe" and country.population = 80000	world_1
select avg(country.surfacearea) , sum(country.population) from country where  country.continent = "North America" and country.surfacearea > 3000	world_1
select sum(country.population) , avg(country.surfacearea) from country where  country.continent = "North America" and country.surfacearea > 3000	world_1
select city.name from city where  city.population between 160000 and 900000	world_1
select city.name from city where  city.population between 160000 and 900000	world_1
select countrylanguage.language from countrylanguage  group by countrylanguage.language  order by count(*) desc limit 1	world_1
select countrylanguage.language from countrylanguage  group by countrylanguage.language  order by count(*) desc limit 1	world_1
select countrylanguage.language from countrylanguage   order by countrylanguage.percentage desc limit 1	world_1
select countrylanguage.countrycode , max(countrylanguage.percentage) from countrylanguage  group by countrylanguage.countrycode	world_1
select count(*) from countrylanguage where  countrylanguage.language = "Spanish"   order by countrylanguage.percentage desc limit 1	world_1
select count(*) from countrylanguage where  countrylanguage.language = "Spanish"	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "Spanish"   order by countrylanguage.percentage desc limit 1	world_1
select countrylanguage.countrycode from countrylanguage where  countrylanguage.language = "Spanish"  group by countrylanguage.countrycode	world_1
select count(*) from conductor	orchestra
select count(*) from conductor	orchestra
select conductor.name from conductor   order by conductor.age asc	orchestra
select conductor.name from conductor   order by conductor.age asc	orchestra
select conductor.name from conductor where  conductor.nationality != "USA"	orchestra
select conductor.name from conductor where  conductor.nationality != "USA"	orchestra
select orchestra.record_company from orchestra   order by orchestra.year_of_founded desc	orchestra
select orchestra.record_company from orchestra   order by orchestra.year_of_founded desc	orchestra
select avg(show.attendance) from show	orchestra
select avg(show.attendance) from show	orchestra
select max(performance.share) , min(performance.share) from performance where  performance.type != "Live final"	orchestra
select max(performance.share) , min(performance.share) from performance where  performance.type != "Live final"	orchestra
select count( distinct conductor.nationality) from conductor	orchestra
select count( distinct conductor.nationality) from conductor	orchestra
select conductor.name from conductor   order by conductor.year_of_work desc	orchestra
select conductor.name from conductor   order by conductor.year_of_work desc	orchestra
select conductor.name from conductor   order by conductor.year_of_work desc limit 1	orchestra
select conductor.name from conductor   order by conductor.year_of_work desc limit 1	orchestra
select conductor.name , orchestra.orchestra from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID	orchestra
select conductor.name , orchestra.orchestra from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id having  count(*) > 1	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id having  count(*) > 1	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id  order by count(*) desc limit 1	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID  group by orchestra.conductor_id  order by count(*) desc limit 1	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID where  orchestra.year_of_founded > 2008	orchestra
select conductor.name from orchestra join conductor on orchestra.Conductor_ID = conductor.Conductor_ID where  orchestra.year_of_founded > 2008	orchestra
select orchestra.record_company , count(*) from orchestra  group by orchestra.record_company	orchestra
select orchestra.record_company , count(*) from orchestra  group by orchestra.record_company	orchestra
select orchestra.major_record_format from orchestra  group by orchestra.major_record_format  order by count(*) asc	orchestra
select orchestra.major_record_format from orchestra  group by orchestra.major_record_format  order by count(*) asc	orchestra
select orchestra.record_company from orchestra  group by orchestra.record_company  order by count(*) desc limit 1	orchestra
select orchestra.record_company from orchestra  group by orchestra.record_company  order by count(*) desc limit 1	orchestra
select orchestra.orchestra from orchestra where  orchestra.orchestra_id not in (select performance.Orchestra_ID from performance  )	orchestra
select orchestra.orchestra from orchestra where  orchestra.orchestra_id not in (select performance.Orchestra_ID from performance  )	orchestra
select orchestra.record_company from orchestra where  orchestra.year_of_founded < 2003   intersect select orchestra.record_company from orchestra where  orchestra.year_of_founded > 2003	orchestra
select orchestra.record_company from orchestra where  orchestra.year_of_founded < 2003   intersect select orchestra.record_company from orchestra where  orchestra.year_of_founded > 2003	orchestra
select count(*) from orchestra where  orchestra.major_record_format = "CD" or orchestra.major_record_format = "DVD"	orchestra
select count(*) from orchestra where  orchestra.major_record_format = "CD" or orchestra.major_record_format = "DVD"	orchestra
select orchestra.year_of_founded from performance join orchestra on performance.Orchestra_ID = orchestra.Orchestra_ID  group by performance.orchestra_id having  count(*) > 1	orchestra
select orchestra.year_of_founded from performance join orchestra on performance.Orchestra_ID = orchestra.Orchestra_ID  group by performance.orchestra_id having  count(*) > 1	orchestra
select count(*) from Highschooler	network_1
select count(*) from Highschooler	network_1
select highschooler.name , highschooler.grade from Highschooler	network_1
select highschooler.name , highschooler.grade from Highschooler	network_1
select distinct highschooler.grade from Highschooler	network_1
select highschooler.grade from Highschooler	network_1
select highschooler.grade from Highschooler where  highschooler.name = "Kyle"	network_1
select highschooler.grade from Highschooler where  highschooler.name = "Kyle"	network_1
select highschooler.name from Highschooler where  highschooler.grade = 10	network_1
select highschooler.name from Highschooler where  highschooler.grade = 10	network_1
select highschooler.id from Highschooler where  highschooler.name = "Kyle"	network_1
select highschooler.id from Highschooler where  highschooler.name = "Kyle"	network_1
select count(*) from Highschooler where  highschooler.grade = 9 or highschooler.grade = 10	network_1
select count(*) from Highschooler where  highschooler.grade = 9 or highschooler.grade = 10	network_1
select highschooler.grade , count(*) from Highschooler  group by highschooler.grade	network_1
select count(*) , highschooler.grade from Highschooler  group by highschooler.grade	network_1
select highschooler.grade from Highschooler  group by highschooler.grade  order by count(*) desc limit 1	network_1
select highschooler.grade from Highschooler  group by highschooler.grade  order by count(*) desc limit 1	network_1
select highschooler.grade from Highschooler  group by highschooler.grade having  count(*) >= 4	network_1
select highschooler.grade from Highschooler  group by highschooler.grade having  count(*) >= 4	network_1
select friend.student_id , count(*) from Friend  group by friend.student_id	network_1
select count(*) , friend.student_id from Friend  group by friend.student_id	network_1
select highschooler.name , count(*) from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by friend.student_id	network_1
select highschooler.name , count(*) from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by highschooler.name	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by friend.friend_id  order by count(*) desc limit 1	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by friend.student_id  order by count(*) desc limit 1	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by friend.friend_id having  count(*) >= 3	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID  group by friend.friend_id having  count(*) >= 3	network_1
select highschooler.name from Highschooler where  highschooler.name = "Kyle"	network_1
select friend.friend_id from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"	network_1
select count( distinct friend.friend_id) from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"	network_1
select count( distinct friend.friend_id) from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.name = "Kyle"	network_1
select highschooler.id from Highschooler   except select friend.student_id from Friend	network_1
select highschooler.id from Highschooler   except select friend.student_id from Friend	network_1
select highschooler.name from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )	network_1
select highschooler.name from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )	network_1
select highschooler.id from Highschooler   intersect select likes.student_id from Likes	network_1
select friend.student_id from Friend   intersect select likes.student_id from Likes	network_1
select highschooler.name from Highschooler   intersect select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID	network_1
select highschooler.name from Highschooler   intersect select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID	network_1
select count(*) , likes.student_id from Likes  group by likes.student_id	network_1
select likes.student_id , count(*) from Likes  group by likes.student_id	network_1
select highschooler.name , count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id	network_1
select highschooler.name , count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id	network_1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id  order by count(*) desc limit 1	network_1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id  order by count(*) desc limit 1	network_1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id having  count(*) >= 2	network_1
select highschooler.name from Likes join Highschooler on Likes.student_id = Highschooler.ID  group by likes.student_id having  count(*) >= 2	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.grade > 5  group by friend.student_id having  count(*) >= 2	network_1
select highschooler.name from Friend join Highschooler on Friend.friend_id = Highschooler.ID where  highschooler.grade > 5  group by friend.friend_id having  count(*) >= 2	network_1
select count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID where  highschooler.name = "Kyle"	network_1
select count(*) from Likes join Highschooler on Likes.student_id = Highschooler.ID where  highschooler.name = "Kyle"	network_1
select avg(highschooler.grade) from Friend join Highschooler on Friend.friend_id = Highschooler.ID	network_1
select avg(highschooler.grade) from Friend join Highschooler on Friend.friend_id = Highschooler.ID	network_1
select min(highschooler.grade) from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )	network_1
select min(highschooler.grade) from Highschooler where  highschooler.id not in (select Friend.friend_id from Friend  )	network_1
select owners.state from Owners   intersect select professionals.state from Professionals	dog_kennels
select owners.state from Owners   intersect select professionals.state from Professionals	dog_kennels
select avg(dogs.age) from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id	dog_kennels
select avg(dogs.age) from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id	dog_kennels
select professionals.professional_id , professionals.last_name , professionals.cell_number from Professionals where  professionals.state = "Indiana"   union select professionals.professional_id , professionals.last_name , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) > 2	dog_kennels
select professionals.professional_id , professionals.last_name , professionals.cell_number from Professionals where  professionals.state = "Indiana"   union select professionals.professional_id , professionals.last_name , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) > 2	dog_kennels
select dogs.name from Dogs   except select dogs.name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id where  treatments.cost_of_treatment > 1000	dog_kennels
select dogs.name from Dogs   except select dogs.name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id where  treatments.cost_of_treatment > 1000	dog_kennels
select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id   union select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id   union select professionals.first_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id join Treatments on Dogs.dog_id = Treatments.dog_id join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select professionals.professional_id , professionals.role_code , professionals.email_address from Professionals   except select professionals.professional_id , professionals.role_code , professionals.email_address from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select professionals.professional_id , professionals.role_code , professionals.email_address from Professionals   except select professionals.professional_id , professionals.role_code , professionals.email_address from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select owners.owner_id , owners.first_name , owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by count(*) desc limit 1	dog_kennels
select owners.owner_id , owners.first_name , owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by count(*) desc limit 1	dog_kennels
select professionals.professional_id , professionals.role_code , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2	dog_kennels
select professionals.professional_id , professionals.role_code , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2	dog_kennels
select breeds.breed_name from Dogs join Breeds on Dogs.breed_code = Breeds.breed_code  group by breeds.breed_name  order by count(*) desc limit 1	dog_kennels
select breeds.breed_name from Dogs join Breeds on Dogs.breed_code = Breeds.breed_code  group by breeds.breed_name  order by count(*) desc limit 1	dog_kennels
select owners.owner_id , owners.last_name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Owners on Dogs.owner_id = Owners.owner_id  group by owners.owner_id  order by sum(treatments.cost_of_treatment) desc limit 1	dog_kennels
select owners.owner_id , owners.last_name from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by sum(treatments.cost_of_treatment) desc limit 1	dog_kennels
select treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code  group by treatments.treatment_type_code  order by sum(treatments.cost_of_treatment) asc limit 1	dog_kennels
select treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code  group by treatments.treatment_type_code  order by sum(treatments.cost_of_treatment) asc limit 1	dog_kennels
select dogs.owner_id , owners.zip_code from owners join charges join dogs  group by dogs.owner_id  order by sum(charges.charge_amount) desc limit 1	dog_kennels
select dogs.owner_id , owners.zip_code from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id join Owners on Dogs.owner_id = Owners.owner_id  group by dogs.owner_id  order by sum(treatments.cost_of_treatment) desc limit 1	dog_kennels
select treatments.professional_id , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2	dog_kennels
select professionals.professional_id , professionals.cell_number from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id  group by treatments.professional_id having  count(*) >= 2	dog_kennels
select professionals.first_name , professionals.last_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id where  treatments.cost_of_treatment < (select avg(Treatments.cost_of_treatment) from Treatments  )	dog_kennels
select professionals.first_name , professionals.last_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id where  treatments.cost_of_treatment < (select avg(Treatments.cost_of_treatment) from Treatments  )	dog_kennels
select treatments.date_of_treatment , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select treatments.date_of_treatment , professionals.first_name from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id	dog_kennels
select treatments.cost_of_treatment , treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code	dog_kennels
select treatments.cost_of_treatment , treatment_types.treatment_type_description from Treatments join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code	dog_kennels
select owners.first_name , owners.last_name , dogs.size_code from Dogs join Owners on Dogs.owner_id = Owners.owner_id	dog_kennels
select owners.first_name , owners.last_name , dogs.size_code from Dogs join Owners on Dogs.owner_id = Owners.owner_id	dog_kennels
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id	dog_kennels
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id	dog_kennels
select dogs.name , treatments.date_of_treatment from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id   order by dogs.breed_code asc limit 1	dog_kennels
select dogs.name , treatments.date_of_treatment from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id  group by dogs.dog_id  order by count(*) asc limit 1	dog_kennels
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id where  owners.state = "Virginia"	dog_kennels
select owners.first_name , dogs.name from Dogs join Owners on Dogs.owner_id = Owners.owner_id where  owners.state = "Virginia"	dog_kennels
select dogs.date_arrived , dogs.date_departed from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id	dog_kennels
select dogs.date_arrived , dogs.date_departed from Treatments join Dogs on Treatments.dog_id = Dogs.dog_id	dog_kennels
select owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id   order by dogs.age asc limit 1	dog_kennels
select owners.last_name from Dogs join Owners on Dogs.owner_id = Owners.owner_id   order by dogs.age asc limit 1	dog_kennels
select professionals.email_address from Professionals where  professionals.state = "Hawaii" or professionals.state = "Wisconsin"	dog_kennels
select professionals.email_address from Professionals where  professionals.state = "Hawaii" or professionals.state = "Wisconsin"	dog_kennels
select dogs.date_arrived , dogs.date_departed from Dogs	dog_kennels
select dogs.date_arrived , dogs.date_departed from Dogs	dog_kennels
select count(*) from Treatments	dog_kennels
select count( distinct treatments.dog_id) from Treatments	dog_kennels
select count( distinct treatments.professional_id) from Treatments	dog_kennels
select count( distinct treatments.professional_id) from Treatments	dog_kennels
select professionals.role_code , professionals.street , professionals.city , professionals.state from Professionals where  professionals.city like "%West%"	dog_kennels
select professionals.role_code , professionals.street , professionals.city , professionals.state from Professionals where  professionals.city like "%West%"	dog_kennels
select owners.first_name , owners.last_name , owners.email_address from Owners where  owners.state like "%North%"	dog_kennels
select owners.first_name , owners.last_name , owners.email_address from Owners where  owners.state like "%North%"	dog_kennels
select count(*) from Dogs where  dogs.age < (select avg(dogs.age) from Dogs  )	dog_kennels
select count(*) from Dogs where  dogs.age < (select avg(dogs.age) from Dogs  )	dog_kennels
select treatments.cost_of_treatment from Treatments   order by treatments.date_of_treatment desc limit 1	dog_kennels
select treatments.cost_of_treatment from Treatments   order by treatments.date_of_treatment desc limit 1	dog_kennels
select count(*) from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments  )	dog_kennels
select count(*) from Dogs where  dogs.dog_id not in (select Treatments.dog_id from Treatments  )	dog_kennels
select count(*) from Owners where  owners.owner_id not in (select Dogs.owner_id from Dogs  )	dog_kennels
select count(*) from Owners where  owners.owner_id not in (select Dogs.owner_id from Dogs  )	dog_kennels
select count(*) from Professionals where  professionals.professional_id not in (select Treatments.professional_id from Treatments  )	dog_kennels
select count(*) from Professionals where  professionals.professional_id not in (select Treatments.professional_id from Treatments  )	dog_kennels
select dogs.name , dogs.age , dogs.weight from Dogs where  dogs.abandoned_yn = 1	dog_kennels
select dogs.name , dogs.age , dogs.weight from Dogs where  dogs.abandoned_yn = 1	dog_kennels
select avg(dogs.age) from Dogs	dog_kennels
select avg(dogs.age) from Dogs	dog_kennels
select dogs.age from Dogs   order by dogs.age desc limit 1	dog_kennels
select dogs.age from Dogs   order by dogs.age desc limit 1	dog_kennels
select charges.charge_type , sum(charges.charge_amount) from Charges  group by charges.charge_type	dog_kennels
select charges.charge_type , sum(charges.charge_amount) from Charges  group by charges.charge_type	dog_kennels
select charges.charge_type from Charges   order by charges.charge_amount desc limit 1	dog_kennels
select charges.charge_amount from Charges   order by charges.charge_type desc limit 1	dog_kennels
select professionals.email_address , professionals.cell_number , professionals.home_phone from Professionals	dog_kennels
select professionals.email_address , professionals.cell_number , professionals.home_phone from Professionals	dog_kennels
select distinct dogs.breed_code , sizes.size_description from Dogs join Sizes on Dogs.size_code = Sizes.size_code	dog_kennels
select distinct dogs.breed_code , dogs.size_code from Dogs	dog_kennels
select professionals.first_name , treatment_types.treatment_type_description from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code	dog_kennels
select professionals.first_name , treatment_types.treatment_type_description from Treatments join Professionals on Treatments.professional_id = Professionals.professional_id join Treatment_Types on Treatments.treatment_type_code = Treatment_Types.treatment_type_code	dog_kennels
select count(*) from singer	singer
select count(*) from singer	singer
select singer.name from singer   order by singer.net_worth_millions asc	singer
select singer.name from singer   order by singer.net_worth_millions asc	singer
select singer.birth_year , singer.citizenship from singer	singer
select singer.birth_year , singer.citizenship from singer	singer
select singer.name from singer where  singer.citizenship != "France"	singer
select singer.name from singer where  singer.citizenship != "French"	singer
select singer.name from singer where  singer.birth_year = 1948 or singer.birth_year = 1949	singer
select singer.name from singer where  singer.birth_year = 1948 or singer.birth_year = 1949	singer
select singer.name from singer   order by singer.net_worth_millions desc limit 1	singer
select singer.name from singer   order by singer.net_worth_millions desc limit 1	singer
select singer.citizenship , count(*) from singer  group by singer.citizenship	singer
select singer.citizenship , count(*) from singer  group by singer.citizenship	singer
select singer.citizenship from singer  group by singer.citizenship  order by count(*) desc limit 1	singer
select singer.citizenship from singer  group by singer.citizenship  order by count(*) desc limit 1	singer
select singer.citizenship , max(singer.net_worth_millions) from singer  group by singer.citizenship	singer
select max(singer.net_worth_millions) , singer.citizenship from singer  group by singer.citizenship	singer
select song.title , singer.name from song join singer on song.Singer_ID = singer.Singer_ID	singer
select song.title , singer.name from song join singer on song.Singer_ID = singer.Singer_ID	singer
select distinct singer.name from song join singer on song.Singer_ID = singer.Singer_ID where  song.sales > 300000	singer
select distinct singer.name from song join singer on song.Singer_ID = singer.Singer_ID where  song.sales > 300000	singer
select singer.name from song join singer on song.Singer_ID = singer.Singer_ID  group by song.singer_id having  count(*) > 1	singer
select singer.name from song join singer on song.Singer_ID = singer.Singer_ID  group by song.singer_id having  count(*) > 1	singer
select singer.name , sum(song.sales) from song join singer on song.Singer_ID = singer.Singer_ID  group by song.singer_id	singer
select sum(song.sales) , singer.name from song join singer on song.Singer_ID = singer.Singer_ID  group by singer.name	singer
select singer.name from singer where  singer.singer_id not in (select song.Singer_ID from song  )	singer
select singer.name from singer where  singer.singer_id not in (select song.Singer_ID from song  )	singer
select singer.citizenship from singer where  singer.birth_year < 1945   intersect select singer.citizenship from singer where  singer.birth_year > 1955	singer
select singer.citizenship from singer where  singer.birth_year < 1945   intersect select singer.citizenship from singer where  singer.birth_year > 1955	singer
select count(*) from Other_Available_Features	real_estate_properties
select ref_feature_types.feature_type_name from Other_Available_Features join Ref_Feature_Types on Other_Available_Features.feature_type_code = Ref_Feature_Types.feature_type_code where  other_available_features.feature_name = "AirCon"	real_estate_properties
select ref_property_types.property_type_description from Properties join Ref_Property_Types on Properties.property_type_code = Ref_Property_Types.property_type_code where  properties.property_type_code = "C"	real_estate_properties
select properties.property_name from Properties where  properties.property_type_code = "House"   union select properties.property_name from Properties where  properties.property_type_code = "Apartment" and properties.room_count > 1	real_estate_properties
