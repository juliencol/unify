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
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "G10B",
    is_ndc: false
)
Subscriber.create!(
    user_id: julien_colombain.id
)
david_lamy = User.create!(
    first_name: "David",
    last_name: "Lamy",
    email: "david.lamy@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
Subscriber.create!(
    user_id: david_lamy.id
)
dylan_hu = User.create!(
    first_name: "Dylan",
    last_name: "Hu",
    email: "dylan.hu@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
Subscriber.create!(
    user_id: dylan_hu.id
)
tom_sanitas = User.create!(
    first_name: "Tom",
    last_name: "Sanitas",
    email: "tom.sanitas@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2021,
    section: "A2",
    classe: "",
    is_ndc: false
)
Subscriber.create!(
    user_id: tom_sanitas.id
)
maelle_jumel = User.create!(
    first_name: "Maëlle",
    last_name: "Jumel",
    email: "maëlle.jumel@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "I2",
    classe: "",
    is_ndc: false
)
Subscriber.create!(
    user_id: maelle_jumel.id
)
puts "5 users were created successfully."



puts "Creating Clubs..."
genesis = Club.create!(
    name: "Genesis BDE",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/genesis580_x5yw1t.png",
    description: "BDE de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
hustle = Club.create!(
    name: "Hustle",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/hustle580_q3le3p.png",
    description: "association entrepreneuriale de l'école",
    creation_date: "",
    website_url: "https://hustleisep.fr/",
    linkedin_url: "https://www.linkedin.com/company/10666026/",
    instagram_url: "https://www.instagram.com/hustleisep/"
)
garage = Club.create!(
    name: "Garage",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/garage580_ur1qj6.png",
    description: "association de l'innovation de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "https://www.linkedin.com/company/garageisep/",
    instagram_url: "https://www.instagram.com/garageisep/"
)
junior_isep = Club.create!(
    name: "Junior isep",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/juniorisep580_n0okcb.png",
    description: "junior entreprise de l'isep",
    creation_date: "",
    website_url: "https://juniorisep.com/",
    linkedin_url: "https://www.linkedin.com/company/junior-isep/",
    instagram_url: "https://www.instagram.com/juniorisep/"
)
move_your_as = Club.create!(
    name: "Move your AS",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/as580_wn6mk2.png",
    description: "association sportive de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: "https://www.instagram.com/asisepmoveyour/"
)
dyonisos = Club.create!(
    name: "Dyonisos",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/dyonisos580_cxenw0.png",
    description: "association d'oenologie de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: "https://www.instagram.com/dionysosisep/"
)
ludisep = Club.create!(
    name: "Ludisep",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/ludisep580_ceinef.png",
    description: "association de jeu de société de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
travel = Club.create!(
    name: "Travel",
    logo: "",
    description: "association de voyages de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
board_to_ride = Club.create!(
    name: "Board to ride",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/boardtoride580_xcx4m4.png",
    description: "associaiton des riders",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_live = Club.create!(
    name: "isep live",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/iseplive580_lek6zx.png",
    description: "association de photographie de l'isep",
    creation_date: "",
    website_url: "https://iseplive.fr/",
    linkedin_url: "",
    instagram_url: "https://www.instagram.com/iseplive/"
)
isep_bands = Club.create!(
    name: "isep bands",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/isepbands580_svjlwl.png",
    description: "association de musique de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_voiles = Club.create!(
    name: "isep voiles",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/isepvoile580_wjh5b5.png",
    description: "association des bateaux",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
jardisep = Club.create!(
    name: "jardisep",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/jardisep580_gnkdsb.png",
    description: "association de jardinage de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
mixep = Club.create!(
    name: "mixep",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/mixsep580_whqyup.png",
    description: "association des djs de l'ise",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
air_isep = Club.create!(
    name: "Air",
    logo: "",
    description: "association de robotique de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
aumonerie = Club.create!(
    name: "Aumonerie",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/aumonerie580_tekjgd.png",
    description: "aumonorie de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
demosthene = Club.create!(
    name: "Démosthène",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/demosthene580_lqnzhi.png",
    description: "association d'éloquence de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
discover_isep = Club.create!(
    name: "Discover isep",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/discover580_s8owqn.png",
    description: "association des bons plans",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
get_down = Club.create!(
    name: "Get down",
    logo: "",
    description: "association de danse",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_gaming_club = Club.create!(
    name: "Isep Gaming Club",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/igc580_yxtfda.png",
    description: "associations des gameurs de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isepa = Club.create!(
    name: "isepa",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/isepa580_soxtom.png",
    description: "association pour aider les étudiants étrangers",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isehelp = Club.create!(
    name: "isHelp",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/ishelp580_sel2ov.png",
    description: "association pour aider des gens",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
numeris = Club.create!(
    name: "Numeris",
    logo: "",
    description: "association pour faire du bif",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
transaharienne = Club.create!(
    name: "Transaharienne",
    logo: "",
    description: "association humanitaire",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
winter = Club.create!(
    name: "Winter",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/winter580_fq4z3r.png",
    description: "association de ski",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_alumni = Club.create!(
    name: "isep Alumni",
    logo: "",
    description: "association des diplomés de l'isep",
    creation_date: "",
    website_url: "https://isepalumni.fr/",
    linkedin_url: "",
    instagram_url: ""
)
puts "Clubs were created successfully."



puts "Creating 5 events..."
Event.create!(
    club_id: genesis.id,
    name: "Soirée stylée",
    short_description: "ça va être lourd comme jamais",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh"
)
Event.create!(
    club_id: genesis.id,
    name: "AW claqué au sol",
    short_description: "ça va être claqué au sol comme jamais",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "dans un endroit claqué au sol"
)
Event.create!(
    club_id: hustle.id,
    name: "Startup Weekend de folie",
    short_description: "probablement le plus bel événement de l'école",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh"
)
Event.create!(
    club_id: isep_alumni.id,
    name: "Conférence l'IA n'existe pas",
    short_description: "Luc Julia démysthifie le mythe de l'intelligence artificielle.",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "N28"
)
Event.create!(
    club_id: junior_isep.id,
    name: "Workshop React",
    short_description: "Petit workshop pour apprendre React",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "NDL"
)
puts "5 events were created successfully."
