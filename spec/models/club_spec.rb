require 'rails_helper'

require_relative '../test_data.rb'

RSpec.describe Club, type: :model do
  context 'create' do 
    it 'should persist a club' do
      number_of_clubs = Club.count
      Club.create!(CLUB_TEST)
      expect(Club.count).to eq(number_of_clubs + 1)
      Club.where(name: "Club test").destroy_all
    end 
  end

  context "associations" do
    context "association with user" do 
      it "should be able to add user" do
        CLUB_TEST = Club.new(CLUB_TEST)
        number_of_user_in_club_test = CLUB_TEST.users.count
        CLUB_TEST.users << User.create!(USER_TEST) 
        CLUB_TEST.save
        expect(CLUB_TEST.users.count).to eq(number_of_user_in_club_test + 1)
      end
  
      it "should be able to remove user" do
        number_of_user_in_club_test = CLUB_TEST.users.count
        CLUB_TEST.users.delete(CLUB_TEST.users.last)
        CLUB_TEST.save
        if number_of_user_in_club_test > 0
          expect(CLUB_TEST.users.count).to eq(number_of_user_in_club_test - 1)
        else
          expect(CLUB_TEST.users.count).to eq(0)
        end
      end
    end
  end
end