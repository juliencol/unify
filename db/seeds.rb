puts "Cleaning database..."
UserClub.destroy_all
User.destroy_all
Club.destroy_all
Event.destroy_all

puts "Creating users..."
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
maelle_jumel = User.create!(
    first_name: "Maëlle",
    last_name: "Jumel",
    email: "maelle.jumel@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "I2",
    classe: "",
    is_ndc: false
)
nathan_rolland = User.create!(
    first_name: "Nathan",
    last_name: "Rolland",
    email: "nathan.rolland@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
sarah_shobanbabu = User.create!(
    first_name: "Sarah",
    last_name: "Shobanbabu",
    email: "sarah.shobanbabu@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    classe: "",
    is_ndc: false
)
juliette_sebillotte = User.create!(
    first_name: "Juliette",
    last_name: "Sebillotte",
    email: "juliette.sebillotte@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "P2",
    classe: "P2B",
    is_ndc: false
)
clement_tisseau = User.create!(
    first_name: "Clément",
    last_name: "Tisseau",
    email: "clement.tisseau@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "P2",
    classe: "P2C",
    is_ndc: false
)
hugo_chemiller = User.create!(
    first_name: "Hugo",
    last_name: "Chemiller",
    email: "hugo.chemiller@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
constance_malgrain = User.create!(
    first_name: "Maëlle",
    last_name: "Jumel",
    email: "constance_malgrain@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
alaina_guiraud = User.create!(
    first_name: "Alaine",
    last_name: "Guiraud",
    email: "alaina.guiraud@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
billy_dosreis = User.create!(
    first_name: "Billy",
    last_name: "Dos Reis",
    email: "billy.dosreis@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2022,
    section: "A1",
    classe: "",
    is_ndc: false
)
arthur_latourrette = User.create!(
    first_name: "Arthur",
    last_name: "Latourrette",
    email: "arthur.latourrette@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "P2",
    classe: "",
    is_ndc: false
)
ruben_groschtern = User.create!(
    first_name: "Ruben",
    last_name: "Groschtern",
    email: "ruben.groschtern@isep.fr",
    password: "password",
    profile_picture: "https://i.pinimg.com/280x280_RS/77/c3/03/77c303339fb7c870d4523e8977e493dd.jpg",
    promotion: 2023,
    section: "I2",
    classe: "",
    is_ndc: false
)
puts "Users were created successfully."



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
    name: "Junior ISEP",
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
    name: "LudISEP",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/ludisep580_ceinef.png",
    description: "association de jeu de société de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
travel = Club.create!(
    name: "Travel",
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/travel580_glnqfx.png",
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
    name: "ISEP Live",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/iseplive580_lek6zx.png",
    description: "association de photographie de l'isep",
    creation_date: "",
    website_url: "https://iseplive.fr/",
    linkedin_url: "",
    instagram_url: "https://www.instagram.com/iseplive/"
)
isep_bands = Club.create!(
    name: "ISEP Bands",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/isepbands580_svjlwl.png",
    description: "association de musique de l'isep",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_voiles = Club.create!(
    name: "ISEP Voiles",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952902/unify/logos-clubs/isepvoile580_wjh5b5.png",
    description: "association des bateaux",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
jardisep = Club.create!(
    name: "jardISEP",
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
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/AIR580_tplwmw.png",
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
    name: "Discover ISEP",
    logo: "https://res.cloudinary.com/isep/image/upload/v1576952901/unify/logos-clubs/discover580_s8owqn.png",
    description: "association des bons plans",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
get_down = Club.create!(
    name: "Get down",
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/GetDown580_zj1vfv.png",
    description: "association de danse",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
isep_gaming_club = Club.create!(
    name: "ISEP Gaming Club",
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
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/Numeris580_peglrd.png",
    description: "association pour faire du bif",
    creation_date: "",
    website_url: "",
    linkedin_url: "",
    instagram_url: ""
)
transaharienne = Club.create!(
    name: "Transaharienne",
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/Trans580_yb0oog.png",
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
    name: "ISEP Alumni",
    logo: "https://res.cloudinary.com/isep/image/upload/v1577437434/unify/logos-clubs/isepAlumni580_lxlg4h.png",
    description: "association des diplomés de l'isep",
    creation_date: "",
    website_url: "https://isepalumni.fr/",
    linkedin_url: "",
    instagram_url: ""
    )
puts "Clubs were created successfully."



puts "Adding clubs to users..."
UserClub.create!(
    user: julien_colombain,
    club: hustle
)
UserClub.create!(
    user: julien_colombain,
    club: garage
)
UserClub.create!(
    user: julien_colombain,
    club: isep_alumni
)
UserClub.create!(
    user: nathan_rolland,
    club: hustle
)
UserClub.create!(
    user: juliette_sebillotte,
    club: hustle
)
UserClub.create!(
    user: clement_tisseau,
    club: hustle
)
UserClub.create!(
    user: hugo_chemiller,
    club: hustle
)
UserClub.create!(
    user: constance_malgrain,
    club: hustle
)
UserClub.create!(
    user: alaina_guiraud,
    club: hustle
)
UserClub.create!(
    user: billy_dosreis,
    club: hustle
)
UserClub.create!(
    user: arthur_latourrette,
    club: hustle
)
UserClub.create!(
    user: ruben_groschtern,
    club: hustle
)
UserClub.create!(
    user: tom_sanitas,
    club: hustle
)
UserClub.create!(
    user: dylan_hu,
    club: hustle
)
UserClub.create!(
    user: david_lamy,
    club: hustle
)
UserClub.create!(
    user: maelle_jumel,
    club: hustle
)
UserClub.create!(
    user: maelle_jumel,
    club: move_your_as
)
puts "Clubs added to users successfully."



puts "Creating 8 events..."
Event.create!(
    club_id: genesis.id,
    name: "Soirée stylée",
    short_description: "Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus.",
    long_description: "Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus. Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus.",
    image: "https://i.imgur.com/4xPcsx7.jpg",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh",
)
Event.create!(
    club_id: genesis.id,
    name: "AW claqué au sol",
    short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://i.imgur.com/pauemHk.jpg",
    date: "",
    price: 20,
    location: "dans un endroit claqué au sol",
)
Event.create!(
    club_id: hustle.id,
    name: "Startup Weekend de folie",
    short_description: "Cras porttitor enim id lorem accumsan, in interdum nibh feugiat. Sed consectetur, tortor quis facilisis dignissim, arcu nibh semper turpis, ac aliquet massa orci ac enim. Suspendisse vitae pulvinar orci, vel ornare odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur erat sem, consectetur sit amet sollicitudin sit amet, interdum id lorem. Ut sagittis dictum tempor. Sed ullamcorper, neque at dapibus tincidunt, urna odio bibendum justo, id rhoncus orci purus sed ipsum.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://res.cloudinary.com/isep/image/upload/v1577126113/unify/image_2_fwcchf.png",
    date: "",
    price: 20,
    location: "chez Cyril Bennarosh",
)
Event.create!(
    club_id: isep_alumni.id,
    name: "Conférence l'IA n'existe pas",
    short_description: "Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://i.imgur.com/pauemHk.jpg",
    date: "",
    price: 20,
    location: "N28",
)
Event.create!(
    club_id: junior_isep.id,
    name: "Workshop React",
    short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://i.imgur.com/4xPcsx7.jpg",
    date: "",
    price: 20,
    location: "NDL",
)
Event.create!(
    club_id: discover_isep.id,
    name: "Afterwork Shotgun ep. 2",
    short_description: "Quoi ? Tu pensais qu’on était déjà mort ?! Le seul truc mort chez Shotgun c’est les cadavres qu’on jette dans la Seine. Tu ne veux pas finir comme eux ? Alors viens à notre nouvel after jeudi 25 janvier chez Monsieur le zinc. Petit bar chill où l'on se sert comme dans une pompe à essence, rien de mieux pour déstresser et oublier le premier semestre. On vous attend nombreux et on compte sur vous pour enjailler le dancefloor. Monsieur le Zinc",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://iseplive.fr/api/storage/event/LJOfJHgkALfvBV0Jh92wbTys74XEfm.jpg",
    date: "25/01/2020",
    price: 20,
    location: "13 rue monsieur le Prince 75006 PARIS",
)
Event.create!(
    club_id: hustle.id,
    name: "Cocktail Entrepreneurs",
    short_description: "Un cocktail c'est toujours sympa, ça l'est encore plus en compagnie d'entrepreneurs inspirants issus de l'ISEP. 🔥 Vous allez être ravi de l'ajouter à vos agendas: un évent mêlant entrepreneuriat et bon goût arrive à toute allure ⌛: Nous aurons l'immense plaisir d'accueillir Le Schoolab ainsi que quatre entrepreneurs passés par l'ISEP pour un événement inédit et hors-série: un cocktail entrepreneur. 🍸 Au menu: présentation de Schoolab et ses programmes (Starter, Le Bridge et autres pépites !), table ovale avec les quatre entrepreneurs alumnis qui partageront leurs expériences et parcours, et bien évidemment un buffet/cocktail pour clore le tout en beauté ! (sans alcool 🚫) En somme, du chaud brûlant en perspective 🔥",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://iseplive.fr/api/storage/event/SHA9OvO5AOIB0vaySR3LxbAHq8koVz.jpg",
    date: "20/02/2020",
    price: 20,
    location: "NDC - N16",
)
Event.create!(
    club_id: move_your_as.id,
    name: "Afterwork AS",
    short_description: "Quoi de mieux qu'un afterwork à la rentrée ? L'AS vous invite à venir boire une (ou plusieurs 🍻) bières ou bien du ricard pour les amateurs ! Tout ça en regardant le match PSG-Réal ⚽🔥",
    long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum ultricies diam at efficitur. Vivamus dignissim gravida dapibus. Integer sagittis a magna vitae dictum. Nullam pellentesque porttitor ligula, sit amet interdum erat cursus vitae. Fusce nec augue tempor, aliquet mi vel, iaculis nunc. Nulla sed velit id dolor gravida tincidunt eget fringilla eros. Maecenas et consequat nisi. Praesent ut vehicula odio, a convallis nunc.",
    image: "https://iseplive.fr/api/storage/event/UmBiEdnSSB8vzWhEJ0kMLHWiBG3pJr.jpg",
    date: "06/03/2020",
    price: 20,
    location: "7 rue Gregoire des Tours 75006 PARIS"
)
puts "8 events were created successfully."
