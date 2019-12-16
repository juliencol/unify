puts "Cleaning database..."
Subscriber.destroy_all
User.destroy_all
Club.destroy_all



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


puts "Creating Clubs..."
genesis = Club.create!(
    name: "Genesis BDE",
    logo: "",
    creation_date: ""
)
hustle = Club.create!(
    name: "Hustle",
    logo: "",
    creation_date: ""
)
garage = Club.create!(
    name: "Garage",
    logo: "",
    creation_date: ""
)
junior_isep = Club.create!(
    name: "Junior isep",
    logo: "",
    creation_date: ""
)
move_your_as = Club.create!(
    name: "Move your AS",
    logo: "",
    creation_date: ""
)
dyonisos = Club.create!(
    name: "Dyonisos",
    logo: "",
    creation_date: ""
)
ludisep = Club.create!(
    name: "Ludisep",
    logo: "",
    creation_date: ""
)
travel = Club.create!(
    name: "Travel",
    logo: "",
    creation_date: ""
)
board_to_ride = Club.create!(
    name: "Board to ride",
    logo: "",
    creation_date: ""
)
isep_live = Club.create!(
    name: "isep live",
    logo: "",
    creation_date: ""
)
isep_bands = Club.create!(
    name: "isep bands",
    logo: "",
    creation_date: ""
)
isep_voiles = Club.create!(
    name: "isep voiles",
    logo: "",
    creation_date: ""
)
jardisep = Club.create!(
    name: "jardisep",
    logo: "",
    creation_date: ""
)
mixep = Club.create!(
    name: "mixep",
    logo: "",
    creation_date: ""
)
air_isep = Club.create!(
    name: "Air",
    logo: "",
    creation_date: ""
)
aumonerie = Club.create!(
    name: "Aumonerie",
    logo: "",
    creation_date: ""
)
demosthene = Club.create!(
    name: "Démosthène",
    logo: "",
    creation_date: ""
)
discover_isep = Club.create!(
    name: "Discover isep",
    logo: "",
    creation_date: ""
)
get_down = Club.create!(
    name: "Get down",
    logo: "",
    creation_date: ""
)
isep_gaming_club = Club.create!(
    name: "Isep Gaming Club",
    logo: "",
    creation_date: ""
)
isepa = Club.create!(
    name: "isepa",
    logo: "",
    creation_date: ""
)
isehelp = Club.create!(
    name: "isHelp",
    logo: "",
    creation_date: ""
)
numeris = Club.create!(
    name: "Numeris",
    logo: "",
    creation_date: ""
)
transaharienne = Club.create!(
    name: "Transaharienne",
    logo: "",
    creation_date: ""
)
winter = Club.create!(
    name: "Winter",
    logo: "",
    creation_date: ""
)
puts "Clubs were created successfully."
isep_alumni = Club.create!(
    name: "isep Alumni",
    logo: "",
    creation_date: ""
)
puts "Clubs were created successfully."



puts "Creating 5 events..."
Event.create!(
    club_id: genesis.id,
    name: "Soirée stylée",
    description: "ça va être lourd comme jamais",
    image: "",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh"
)
Event.create!(
    club_id: genesis.id,
    name: "AW claqué au sol",
    description: "ça va être claqué au sol comme jamais",
    image: "",
    date: "",
    price: 20,
    location: "dans un endroit claqué au sol"
)
Event.create!(
    club_id: hustle.id,
    name: "Startup Weekend de folie",
    description: "probablement le plus bel événement de l'école",
    image: "",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh"
)
Event.create!(
    club_id: isep_alumni.id,
    name: "Conférence l'IA n'existe pas",
    description: "Luc Julia démysthifie le mythe de l'intelligence artificielle.",
    image: "",
    date: "",
    price: 20,
    location: "N28"
)
Event.create!(
    club_id: junior_isep.id,
    name: "Workshop React",
    description: "Petit workshop pour apprendre React",
    image: "",
    date: "",
    price: 20,
    location: "NDL"
)
puts "5 events were created successfully."
