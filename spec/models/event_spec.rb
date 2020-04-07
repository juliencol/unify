require 'rails_helper'

RSpec.describe Event, type: :model do
  context "association" do
  end

  context "validation" do
    it "should validate name" do 
      event = Event.new()
      event.validate
      expect(event.errors.messages).to include(:name)
      expect(event.valid?).to eq(false)
    end
    it "should validate short description" do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
    it "should validate long description" do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
    it "should validate location" do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
    it "should validate date" do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
    it "should validate price"  do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
    it "should validate image" do
      event = Event.new()
      expect(event.valid?).to eq(false)
    end
  end

  it 'should persist an event' do
    Event.create!(
      club_id:  Club.where("name ILIKE ?", "EXODUS BDE").ids[0],
      name: "Evenement test",
      short_description: "short description",
      long_description: "long description",
      image: "https://i.imgur.com/4xPcsx7.jpg",
      date: "15/11/2019 22:00",
      price: 15,
      location: "10 rue de Vanves, Issy Les Moulineaux",
    ) 
    expect(Event.count).to eq(Event.count)
  end
end 