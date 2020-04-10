# This file creates an instance of every model to provide data for testing
USER_TEST = {
  first_name: "User",
  last_name: "Test",
  email: "user.test@isep.fr",
  password: "password",
  profile_picture: "",
  promotion: 2022,
  section: "A1",
  classe: "G10B",
  family_id: Family.first.id
}

CLUB_TEST = {
  name: "Club test",
  logo: "https://res.cloudinary.com/isep/image/upload/v1583065755/unify/logos-clubs/exodus_logo_n0evw9.png",
  short_description: "description courte",
  description: "description longue de club test",
  website_url: "",
  linkedin_url: "",
  instagram_url: ""
}
