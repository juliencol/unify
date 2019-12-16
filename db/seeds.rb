puts "Cleaning database..."
Subscriber.destroy_all
User.destroy_all
Association.destroy_all



puts "Creating 5 users..."
julien_colombain = User.create!(
    first_name: "Julien",
    last_name: "Colombain",
    email: "julien.colombain@isep.fr",
    password: "password",
    profile_picture: "",
    promotion: 2022,
    section: "A1",
    classe: "G10B",
    is_ndc: false
)
david_lamy = User.create!(
    first_name: "David",
    last_name: "Lamy",
    email: "david.lamy@isep.fr",
    password: "password",
    profile_picture: "",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
dylan_hu = User.create!(
    first_name: "Dylan",
    last_name: "Hu",
    email: "dylan.hu@isep.fr",
    password: "password",
    profile_picture: "",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
tom_sanitas = User.create!(
    first_name: "Tom",
    last_name: "Sanitas",
    email: "tom.sanitas@isep.fr",
    password: "password",
    profile_picture: "",
    promotion: 2021,
    section: "A2",
    classe: "",
    is_ndc: false
)
maelle_jumel = User.create!(
    first_name: "Maëlle",
    last_name: "Jumel",
    email: "maëlle.jumel@isep.fr",
    password: "password",
    profile_picture: "",
    promotion: 2023,
    section: "I2",
    classe: "",
    is_ndc: false
)
puts "5 users were created successfully."



puts "Creating 5 subscribers..."
Subscriber.create!(
    user_id: julien_colombain.id
)
Subscriber.create!(
    user_id: david_lamy.id
)
Subscriber.create!(
    user_id: dylan_hu.id
)
Subscriber.create!(
    user_id: tom_sanitas.id
)
Subscriber.create!(
    user_id: maelle_jumel.id
)
puts "5 subcribers were created successfully."


puts "Creating Associations..."
genesis = Association.create!(
    name: "Genesis BDE",
    logo: "",
    creation_date: ""
)
hustle = Association.create!(
    name: "Hustle",
    logo: "",
    creation_date: ""
)
garage = Association.create!(
    name: "Garage",
    logo: "",
    creation_date: ""
)
junior_isep = Association.create!(
    name: "Junior isep",
    logo: "",
    creation_date: ""
)
move_your_as = Association.create!(
    name: "Move your AS",
    logo: "",
    creation_date: ""
)
dyonisos = Association.create!(
    name: "Dyonisos",
    logo: "",
    creation_date: ""
)
ludisep = Association.create!(
    name: "Ludisep",
    logo: "",
    creation_date: ""
)
travel = Association.create!(
    name: "Travel",
    logo: "",
    creation_date: ""
)
board_to_ride = Association.create!(
    name: "Board to ride",
    logo: "",
    creation_date: ""
)
isep_live = Association.create!(
    name: "isep live",
    logo: "",
    creation_date: ""
)
isep_bands = Association.create!(
    name: "isep bands",
    logo: "",
    creation_date: ""
)
isep_voiles = Association.create!(
    name: "isep voiles",
    logo: "",
    creation_date: ""
)
jardisep = Association.create!(
    name: "jardisep",
    logo: "",
    creation_date: ""
)
mixep = Association.create!(
    name: "mixep",
    logo: "",
    creation_date: ""
)
air_isep = Association.create!(
    name: "Air",
    logo: "",
    creation_date: ""
)
aumonerie = Association.create!(
    name: "Aumonerie",
    logo: "",
    creation_date: ""
)
demosthene = Association.create!(
    name: "Démosthène",
    logo: "",
    creation_date: ""
)
discover_isep = Association.create!(
    name: "Discover isep",
    logo: "",
    creation_date: ""
)
get_down = Association.create!(
    name: "Get down",
    logo: "",
    creation_date: ""
)
isep_gaming_club = Association.create!(
    name: "Isep Gaming Club",
    logo: "",
    creation_date: ""
)
isepa = Association.create!(
    name: "isepa",
    logo: "",
    creation_date: ""
)
isehelp = Association.create!(
    name: "isHelp",
    logo: "",
    creation_date: ""
)
numeris = Association.create!(
    name: "Numeris",
    logo: "",
    creation_date: ""
)
transaharienne = Association.create!(
    name: "Transaharienne",
    logo: "",
    creation_date: ""
)
winter = Association.create!(
    name: "Winter",
    logo: "",
    creation_date: ""
)
puts "Associations were created successfully."



# puts "Creating 5 events..."
# Event.create!(
#     organization: genesis.id,
#     name: "Gala 2019",
#     description: "ça va être lourd comme jamais",
#     image: "",
#     date: "",
#     price: 20,
#     location: "chez Cyril Bennarosh"
# )
# puts "5 events were created successfully."
