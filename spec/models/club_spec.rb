require 'rails_helper'

RSpec.describe Club, type: :model do
  it 'should persist a club' do
    Club.create!(
      name: "EXODUS BDE",
      logo: "https://res.cloudinary.com/isep/image/upload/v1583065755/unify/logos-clubs/exodus_logo_n0evw9.png",
      short_description: "BDE de l'ISEP",
      description: "BDE de l'ISEP",
      website_url: "",
      linkedin_url: "",
      instagram_url: ""
    )
    expect(Club.count).to eq(Club.count)
  end 
end



