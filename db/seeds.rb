
########## Creating Test Data ##########

# Sailings seeding data
sailings_list = [
    [101, "Alaska", "Celebrity Infinity", "Celebrity", '2016-08-07', '2016-08-14', "Vancouver, BC", "Vancouver, BC", '2016-05-6'],
    [102, "Alaska", "Celebrity Solstice", "Celebrity", '2016-08-12', '2016-08-19', "Seattle, WA", "Seattle, WA", '2016-05-6'],
    [103, "Alaska", "Star Princess", "Princess", '2016-08-13', '2016-08-20', "Vancouver, BC", "Anchorage, AK", '2016-05-6'],
    [104, "Alaska", "Zaandam", "Holland America", '2016-08-14', '2016-08-21', "Vancouver, BC", "Anchorage, AK", '2016-05-6'],
    [105, "Alaska", "Norwegian Sun", "Norwegian", '2016-08-15', '2016-08-29', "Anchorage, AK", "Anchorage, AK", '2016-05-6'],
    [106, "Alaska", "Carnival Legend", "Carnival", '2016-08-16', '2016-08-23', "Seattle, WA", "Seattle, WA", '2016-05-6'],
    [107, "Alaska", "Celebrity Solstice", "Celebrity", '2016-08-19', '2016-08-26', "Seattle, WA", "Seattle, WA", '2016-05-6'],
    [108, "Alaska", "Norwegian Pearl", "Norwegian", '2016-08-21', '2016-08-28', "Seattle, WA", "Seattle, WA", '2016-05-6'],
    [109, "Alaska", "Grand Princess", "Princess", '2016-08-29', '2016-09-08', "San Francisco, CA", "San Francisco, CA", '2016-05-6'],

    [109, "Europe/Mediterranean", "Harmony of the Seas", "Royal Caribean", '2016-08-04', '2016-08-11', "Rome, Italy", "Rome, Italy", '2016-05-6'],
    [110, "Europe/Mediterranean", "Harmony of the Seas", "Royal Caribean", '2016-08-25', '2016-09-01', "Rome, Italy", "Rome, Italy", '2016-05-6'],
    [111, "Europe/Mediterranean", "Independence of the Seas", "Royal Caribean", '2016-08-27', '2016-09-09', "London, England", "London, England", '2016-05-6'],
    [112, "Europe/Mediterranean", "Queen Victoria", "Cunard", '2016-09-03', '2016-09-17', "Athens, Greece", "Rome, Italy", '2016-05-6'],
    [113, "Europe/Mediterranean", "Norwegian Jade", "Norwegian", '2016-09-10', '2016-09-24', "Venice, Italy", "Venice, Italy", '2016-05-6'],
    [114, "Europe/Mediterranean", "Norwegian Spirit", "Norwegian", '2016-09-18', '2016-09-30', "Venice, Italy", "Barcelona, Spain", '2016-05-6'],
    [115, "Europe/Mediterranean", "Carnival Vista", "Carnival", '2016-09-23', '2016-10-01', "Barcelona, Spain", "Barcelona, Spain", '2016-05-6'],
    [116, "Europe/Mediterranean", "Queen Victoria", "Cunard", '2016-09-24', '2016-10-15', "Rome, Italy", "Rome, Italy", '2016-05-6'],
    [117, "Europe/Mediterranean", "Pacific Princess", "Princess", '2016-10-04', '2016-10-16', "Venice, Italy", "Barcelona, Spain", '2016-05-6'],
    [118, "Europe/Mediterranean", "Queen Victoria", "Cunard", '2016-10-01', '2016-10-15', "Venice, Italy", "Rome, Italy", '2016-05-6'],
    [119, "Europe/Mediterranean", "MSC Musica", "MSC Cruises", '2016-10-02', '2016-10-13', "Rome, Italy", "Rome, Italy", '2016-05-6'],
    [120, "Europe/Mediterranean", "Costa Diadema", "Costa Cruises", '2016-10-03', '2016-10-10', "Barcelona, Spain", "Barcelona, Spain", '2016-05-6'],
    [121, "Europe/Mediterranean", "MSC Splendida", "MSC Cruises", '2016-10-05', '2016-10-12', "London, England", "Genoa, Italy", '2016-05-6'],
    [122, "Europe/Mediterranean", "MSC Fantasia", "MSC Cruises", '2016-10-12', '2016-10-19', "Barcelona, Spain", "Barcelona, Spain", '2016-05-6'],
    [123, "Europe/Mediterranean", "Costa neoRiviera", "Costa Cruises", '2016-10-17', '2016-10-24', "Venice, Italy", "Athens, Greece", '2016-05-6'],
    [124, "Europe/Mediterranean", "MSC Splendida", "MSC Cruises", '2016-10-23', '2016-11-01', "Marseille, France", "Marseille, France", '2016-05-6'],
    [125, "Europe/Mediterranean", "Harmony of the Seas", "Royal Caribean", '2016-10-20', '2016-10-23', "Rome, Italy", "Barcelona, Spain", '2016-05-6'],
    [126, "Europe/Mediterranean", "Costa neoClassica", "Costa Cruises", '2016-10-23', '2016-11-03', "Savona, Italy", "Savona, Italy", '2016-05-6'],
    [127, "Europe/Mediterranean", "Pacific Princess", "Princess", '2016-11-21', '2016-12-20', "Venice, Italy", "Fort Lauderdale, FL", '2016-05-6'],

    [128, "Caribbean", "Carnival Sunshine", "Carnival", '2016-08-01', '2016-08-09', "New York, NY", "New York, NY", '2016-05-6'],
    [129, "Caribbean", "Carnival Fascination", "Carnival", '2016-08-03', '2016-08-10', "Barbados", "Barbados", '2016-05-6'],
    [130, "Caribbean", "Oasis of the Seas", "Royal Caribbean", '2016-08-20', '2016-08-27', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [131, "Caribbean", "Norwegian Escape", "Norwegian", '2016-08-20', '2016-09-03', "Miami, FL", "Miami, FL", '2016-05-6'],
    [132, "Caribbean", "Carnival Glory", "Carnival", '2016-08-27', '2016-09-03', "Miami, FL", "Miami, FL", '2016-05-6'],
    [133, "Caribbean", "Norwegian Escape", "Norwegian", '2016-08-28', '2016-09-10', "Miami, FL", "Miami, FL", '2016-05-6'],
    [134, "Caribbean", "Oasis of the Seas", "Royal Caribbean", '2016-09-10', '2016-09-17', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [135, "Caribbean", "Norwegian Escape", "Norwegian", '2016-09-17', '2016-09-24', "Miami, FL", "Miami, FL", '2016-05-6'],
    [136, "Caribbean", "Allure of the Seas", "Royal Caribbean", '2016-09-18', '2016-09-25', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [137, "Caribbean", "Carnival Magic", "Carnival", '2016-09-24', '2016-10-01', "Port Canaveral, FL", "Port Canaveral, FL", '2016-05-6'],
    [138, "Caribbean", "Carnival Dream", "Carnival", '2016-09-25', '2016-10-02', "New Orleans, LA", "New Orleans, LA", '2016-05-6'],
    [139, "Caribbean", "Carnival Breeze", "Carnival", '2016-09-25', '2016-10-02', "Galveston, TX", "Galveston, TX", '2016-05-6'],
    [140, "Caribbean", "Allure of the Seas", "Royal Caribbean", '2016-09-25', '2016-10-02', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [141, "Caribbean", "Oasis of the Seas", "Royal Caribbean", '2016-10-01', '2016-10-08', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [142, "Caribbean", "Allure of the Seas", "Royal Caribbean", '2016-10-09', '2016-10-16', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [143, "Caribbean", "Norwegian Dawn", "Norwegian", '2016-10-28', '2016-11-11', "Boston, MA", "New Orleans, LA", '2016-05-6'],
    [144, "Caribbean", "Allure of the Seas", "Royal Caribbean", '2016-10-30', '2016-11-06', "Fort Lauderdale, FL", "Fort Lauderdale, FL", '2016-05-6'],
    [145, "Caribbean", "Norwegian Dawn", "Norwegian", '2016-11-06', '2016-11-20', "San Juan, Puerto Rico", "San Juan, Puerto Rico", '2016-05-6'],
    [146, "Caribbean", "Norwegian Epic", "Norwegian", '2016-11-19', '2016-12-03', "Port Canaveral, FL", "Port Canaveral, FL", '2016-05-6'],
    [147, "Caribbean", "Norwegian Gem", "Norwegian", '2016-11-20', '2016-12-04', "San Juan, Puerto Rico", "San Juan, Puerto Rico", '2016-05-6'],
]

# Users seeding data
users_list = [
    ["Luke Skywalker", "lukeskywalker@gmail.com", "password", "Luke"],
    ["Leia Organa", "leiaorgana@gmail.com", "password", "Leia"],
    ["Darth Vader", "darthvader@gamil.com", "password", "Darth"],
    ["Han Solo", "hansolo@gmail.com", "password", "Han"],
    ["yoda", "yoda@gmail.com", "password", "Yoda"],
    ["Darth Maul", "darthmaul@gmail.com", "password", "Maul"],
    ["Boba Fett", "bobafett@gmail.com", "password", "BobaFett"],
    ["Obi-Wan Kenobi", "obiwankenobi@gmail.com", "password", "OldBen"],
    ["Chewbacca", "chewbacca@gmail.com", "password", "Chewie"],
    ["Padme Amidala", "padmeamidala@gmail.com", "password", "Padme"],
    ["Jabba the Hutt", "jabba@gmail.com", "password", "Jabba"],
    ["Mace Windu", "macewindu@gmail.com", "password", "Windu"],
    ["Lando Calrissian", "landocalrissian@gmail.com", "password", "Lando"],
    ["Wedge Antilles", "wedgeantilles@gmail.com", "password", "Wedge"],
    ["Jar Jar Binks", "jarjar@gmail.com", "password", "JarJar"],
    ["R2D2", "r2d2@gmail.com", "password", "R2D2"],
    ["C-3PO", "c-3pO@gmail.com", "password", "C-3PO"],
    ["Kylo Ren", "kyloren@gmail.com", "password", "KyloRen"],
    ["Emperor Palpatine", "palpatine@gmail.com", "password", "EmperorPalpatine"],
    ["Rey", "rey@gmail.com", "password", "Rey"],
    ["Finn", "Finn@gmail.com", "password", "Finn"],
    ["Supreme Leader Snoke", "snoke@gmail.com", "password", "Snoke"],
    ["Maz Kanata", "mazkanata@gmail.com", "password", "Maz"],
    ["Count Dooku", "countdooku@gmail.com", "password", "CountDooku"],
    ["Poe Dameron", "poedameron@gmail.com", "password", "Poe"],
    ["Admiral Ackbar", "admiralackbar@gmail.com", "password", "AdmiralAckbar"],
    ["Grand Moff Tarkin", "grandmofftarkin@gmail.com", "password", "GrandMoffTarkin"],
    ["Owen Lars", "owenlars@gmail.com", "password", "OwenLars"],
]

# Events seeding data

events_list = [
    [1, "Mexican Fiesta", '2016-08-07 18:00:00.000000', '2016-08-07 22:00:00.000000', "Ball room", "Come join the Mexican party!", 50, 1],
    [2, "Caribbean Beach Party", '2016-08-08 17:00:00.000000', '2016-08-08 21:00:00.000000', "Main deck", "Join us for a caribbean beach party!!", 100, 1],
    [6, "Karaoke", '2016-08-09 18:00:00.000000', '2016-08-09 24:00:00.000000', "Main Bar", "Come join us for a night of karaoke and fun!", 60, 1],

    [2, "Caribbean Beach Party", '2016-08-12 17:00:00.000000', '2016-08-12 21:00:00.000000', "Main deck", "Join us for a caribbean beach party!!", 100, 2],
    [3, "Comdey Club Night", '2016-08-13 19:00:00.000000', '2016-08-13 23:00:00.000000', "Event Room 132", "Come and enjoy our comedy night!", 45, 2],
    [17, "Trivia", '2016-08-14 16:00:00.000000', '2016-08-14 18:00:00.000000', "Even Room 823", "Test your knowledge at our trivia event!", 35, 2],

    [3, "Comdey Club Night", '2016-08-13 19:00:00.000000', '2016-08-13 23:00:00.000000', "Event Room 132", "Come and enjoy our comedy night!", 45, 3],
    [4, "Live Music", '2016-08-14 16:00:00.000000', '2016-08-14 19:00:00.000000', "Event Room 438", "Our live music night is a favorite amongst our guests!", 25, 3],
    [19, "Dance Classes", '2016-08-15 16:00:00.000000', '2016-08-15 17:00:00.000000', "Dance Hall 3", "Ball room, tango, and waltz!", 40, 3],

    [4, "Live Music", '2016-08-14 16:00:00.000000', '2016-08-14 19:00:00.000000', "Event Room 438", "Our live music night is a favorite amongst our guests!", 25, 4],
    [5, "Piano Bar", '2016-08-15 12:00:00.000000', '2016-08-15 15:00:00.000000', "Music Hall", "The piano bar lets guests share their favorite pieces of music with one another!", 20, 4],
    [8, "Water Park", '2016-08-16 8:00:00.000000', '2016-08-16 17:00:00.000000', "Water Park", "Bring the whole family out to enjoy our world class water park!", 300, 4],

    [5, "Piano Bar", '2016-08-15 12:00:00.000000', '2016-08-15 15:00:00.000000', "Music Hall", "The piano bar lets guests share their favorite pieces of music with one another!", 20, 5],
    [6, "Karaoke", '2016-08-16 18:00:00.000000', '2016-08-16 24:00:00.000000', "Main Bar", "Come join us for a night of karaoke and fun!", 60, 5],
    [7, "IMAX", '2016-08-17 10:00:00.000000', '2016-08-17 12:00:00.000000', "IMAX Theatre", "Enjoy our large selection of IMAX movies in our state of the art facility!", 200, 5],

    [6, "Karaoke", '2016-08-16 18:00:00.000000', '2016-08-16 24:00:00.000000', "Main Bar", "Come join us for a night of karaoke and fun!", 60, 6],
    [7, "IMAX", '2016-08-17 10:00:00.000000', '2016-08-17 12:00:00.000000', "IMAX Theatre", "Enjoy our large selection of IMAX movies in our state of the art facility!", 200, 6],
    [22, "Tennis", '2016-08-18 15:00:00.000000', '2016-08-18 18:00:00.000000', "Gym Auditorium 2", "Play tennis in our world class facility!", 30, 6],

    [7, "IMAX", '2016-08-19 10:00:00.000000', '2016-08-19 12:00:00.000000', "IMAX Theatre", "Enjoy our large selection of IMAX movies in our state of the art facility!", 200, 7],
    [8, "Water Park", '2016-08-20 8:00:00.000000', '2016-08-20 17:00:00.000000', "Water Park", "Bring the whole family out to enjoy our world class water park!", 300, 7],
    [13, "Mixologist Competitions", '2016-08-21 18:00:00.000000', '2016-08-21 20:00:00.000000', "Event Room 842", "Test your drink making skills in a fun environment with our mixologist masters!", 20, 7],

    [8, "Water Park", '2016-08-21 8:00:00.000000', '2016-08-21 17:00:00.000000', "Water Park", "Bring the whole family out to enjoy our world class water park!", 300, 8],
    [9, "Mini Golf", '2016-08-22 10:00:00.000000', '2016-08-22 15:00:00.000000', "Mini Golf Course", "Enjoy 24 holes of mini golf fun!", 100, 8],
    [21, "Ping Pong", '2016-08-23 11:00:00.000000', '2016-08-23 14:00:00.000000', "Gym Auditorium 1", "Join us to play ping pong, singles and doubles!", 20, 8],

    [9, "Mini Golf", '2016-08-29 10:00:00.000000', '2016-08-29 15:00:00.000000', "Mini Golf Course", "Enjoy 24 holes of mini golf fun!", 100, 9],
    [10, "Dodgeball", '2016-08-30 11:00:00.000000', '2016-08-30 15:00:00.000000', "Gym Auditorium 3", "Join our competitive dodgeball teams and don't miss out on the action!", 40, 9],
    [14, "Bingo", '2016-08-31 17:00:00.000000', '2016-08-31 19:00:00.000000', "Event Room 346", "Our guests love our bingo nights, come and join the fun!", 75, 9],

    [10, "Dodgeball", '2016-08-04 11:00:00.000000', '2016-08-04 15:00:00.000000', "Gym Auditorium 3", "Join our competitive dodgeball teams and don't miss out on the action!", 40, 10],
    [11, "Casino", '2016-08-05 10:00:00.000000', '2016-08-05 24:00:00.000000', "Casino Hall", "Enjoy our large selection of casino games, we have everything to suit your needs!", 250, 10],
    [20, "Basketball", '2016-08-06 12:00:00.000000', '2016-08-06 15:00:00.000000', "Gym Auditorium 2", "Pickup basketball, all ages wecome!", 30, 10],

    [11, "Casino", '2016-08-27 10:00:00.000000', '2016-08-27 24:00:00.000000', "Casino Hall", "Enjoy our large selection of casino games, we have everything to suit your needs!", 250, 11],
    [12, "Cooking Classes", '2016-08-28 16:00:00.000000', '2016-08-28 19:00:00.000000', "Event Room 278", "Join our world class chefs in creating a wide arange of international cuisine!", 15, 11],
    [16, "Video Arcade", '2016-08-29 12:00:00.000000', '2016-08-29 20:00:00.000000', "Arcade Room 100", "Play the classics as well as the newest releases in our state of the art arcade room!", 50, 11],

    [12, "Cooking Classes", '2016-09-03 16:00:00.000000', '2016-09-03 19:00:00.000000', "Event Room 278", "Join our world class chefs in creating a wide arange of international cuisine!", 15, 12],
    [13, "Mixologist Competitions", '2016-09-04 18:00:00.000000', '2016-09-04 20:00:00.000000', "Event Room 842", "Test your drink making skills in a fun environment with our mixologist masters!", 20, 12],
    [15, "Art Exhibitions", '2016-09-05 9:00:00.000000', '2016-09-05 14:00:00.000000', "Art Romm 124", "Come visit our world class art exhibition!", 110, 12],

    [13, "Mixologist Competitions", '2016-09-10 18:00:00.000000', '2016-09-10 20:00:00.000000', "Event Room 842", "Test your drink making skills in a fun environment with our mixologist masters!", 20, 13],
    [14, "Bingo", '2016-09-11 17:00:00.000000', '2016-09-11 19:00:00.000000', "Event Room 346", "Our guests love our bingo nights, come and join the fun!", 75, 13],
    [18, "Volleyball", '2016-09-12 12:00:00.000000', '2016-09-12 15:00:00.000000', "Main Promenade", "Enjoy the sun and a friendly game of volleyball out on the main promenade!", 30, 13],

    [14, "Bingo", '2016-09-18 17:00:00.000000', '2016-09-18 19:00:00.000000', "Event Room 346", "Our guests love our bingo nights, come and join the fun!", 75, 14],
    [15, "Art Exhibitions", '2016-09-19 9:00:00.000000', '2016-09-19 14:00:00.000000', "Art Romm 124", "Come visit our world class art exhibition!", 110, 14],
    [17, "Trivia", '2016-09-20 16:00:00.000000', '2016-09-20 18:00:00.000000', "Even Room 823", "Test your knowledge at our trivia event!", 35, 15],

    [15, "Art Exhibitions", '2016-09-23 9:00:00.000000', '2016-09-23 14:00:00.000000', "Art Romm 124", "Come visit our world class art exhibition!", 110, 15],
    [16, "Video Arcade", '2016-09-24 12:00:00.000000', '2016-09-24 20:00:00.000000', "Arcade Room 100", "Play the classics as well as the newest releases in our state of the art arcade room!", 50, 15],
    [8, "Water Park", '2016-09-25 8:00:00.000000', '2016-09-25 17:00:00.000000', "Water Park", "Bring the whole family out to enjoy our world class water park!", 300, 15],

    [16, "Video Arcade", '2016-09-24 12:00:00.000000', '2016-09-24 20:00:00.000000', "Arcade Room 100", "Play the classics as well as the newest releases in our state of the art arcade room!", 50, 16],
    [17, "Trivia", '2016-09-25 16:00:00.000000', '2016-09-25 18:00:00.000000', "Even Room 823", "Test your knowledge at our trivia event!", 35, 16],
    [3, "Comdey Club Night", '2016-09-26 19:00:00.000000', '2016-09-26 23:00:00.000000', "Event Room 132", "Come and enjoy our comedy night!", 45, 16],

    [17, "Trivia", '2016-10-04 16:00:00.000000', '2016-10-04 18:00:00.000000', "Even Room 823", "Test your knowledge at our trivia event!", 35, 17],
    [18, "Volleyball", '2016-10-05 12:00:00.000000', '2016-10-05 15:00:00.000000', "Main Promenade", "Enjoy the sun and a friendly game of volleyball out on the main promenade!", 30, 17],
    [11, "Casino", '2016-10-06 10:00:00.000000', '2016-10-06 24:00:00.000000', "Casino Hall", "Enjoy our large selection of casino games, we have everything to suit your needs!", 250, 17],

    [18, "Volleyball", '2016-10-01 12:00:00.000000', '2016-10-01 15:00:00.000000', "Main Promenade", "Enjoy the sun and a friendly game of volleyball out on the main promenade!", 30, 18],
    [19, "Dance Classes", '2016-10-02 16:00:00.000000', '2016-10-02 17:00:00.000000', "Dance Hall 3", "Ball room, tango, and waltz!", 40, 18],
    [9, "Mini Golf", '2016-10-03 10:00:00.000000', '2016-10-03 15:00:00.000000', "Mini Golf Course", "Enjoy 24 holes of mini golf fun!", 100, 18],

    [19, "Dance Classes", '2016-09-03 16:00:00.000000', '2016-09-03 17:00:00.000000', "Dance Hall 3", "Ball room, tango, and waltz!", 40, 19],
    [20, "Basketball", '2016-10-03 12:00:00.000000', '2016-10-03 15:00:00.000000', "Gym Auditorium 2", "Pickup basketball, all ages wecome!", 30, 19],
    [8, "Water Park", '2016-10-04 8:00:00.000000', '2016-10-04 17:00:00.000000', "Water Park", "Bring the whole family out to enjoy our world class water park!", 300, 19],

    [20, "Basketball", '2016-10-03 12:00:00.000000', '2016-10-03 15:00:00.000000', "Gym Auditorium 2", "Pickup basketball, all ages wecome!", 30, 20],
    [21, "Ping Pong", '2016-10-04 11:00:00.000000', '2016-10-04 14:00:00.000000', "Gym Auditorium 1", "Join us to play ping pong, singles and doubles!", 20, 20],
    [2, "Caribbean Beach Party", '2016-10-05 17:00:00.000000', '2016-10-05 21:00:00.000000', "Main deck", "Join us for a caribbean beach party!!", 100, 20],

    [21, "Ping Pong", '2016-10-05 11:00:00.000000', '2016-10-05 14:00:00.000000', "Gym Auditorium 1", "Join us to play ping pong, singles and doubles!", 20, 21],
    [22, "Tennis", '2016-10-06 15:00:00.000000', '2016-10-06 18:00:00.000000', "Gym Auditorium 2", "Play tennis in our world class facility!", 30, 21],
    [1, "Mexican Fiesta", '2016-10-07 18:00:00.000000', '2016-10-07 22:00:00.000000', "Ball room", "Come join the Mexican party!", 50, 21],

]

# Event register seeding data


# Party register sedding data


# Non registered users seeding data


# Detailed user seeding data
detailed_users_list = [
    ["Boba", "Fett", "m", '1950-06-06', "straight", "I love hunting people", "Mandalorian", "Ewok", 7],
]

########## Populating Database ##########

# Populating users
users_list.each do |name, email, password, username|
  User.create( name: name, email: email, password: password, username: username)
end

# Populating sailings
sailings_list.each do |official_id, destination_identifier, cruise_ship_name,
    cruise_ship_company, departure_date, return_date, port_of_origin,
    port_of_destination, created_at, updated_at|
  Sailing.create( official_id: official_id, destination_identifier: destination_identifier,
                  cruise_ship_name: cruise_ship_name, cruise_ship_company: cruise_ship_company,
                  departure_date: departure_date, return_date: return_date,
                  port_of_origin: port_of_origin, port_of_destination: port_of_destination,
                  created_at: created_at, updated_at: updated_at)
end


# Populating events
events_list.each do |creator_id, event_name, start_date, end_date, location,
    description, max_participants, sailing_id |
  Event.create( creator_id: creator_id, event_name: event_name,
                start_date: start_date, end_date: end_date, location: location,
                description: description, max_participants: max_participants,
                sailing_id: sailing_id)
end


# Populating event register


# Populating party register


# Populating non registered users


# Populating detailed user
detailed_users_list.each do |first_name, last_name, gender, birth_day,
    sexual_orientation, description, primary_language, secondary_language, user_id|
  DetailedUser.create( first_name: first_name, last_name: last_name, gender: gender, birth_day: birth_day,
                       sexual_orientation: sexual_orientation, description: description,
                       primary_language: primary_language, secondary_language: secondary_language,
                       user_id: user_id)
end