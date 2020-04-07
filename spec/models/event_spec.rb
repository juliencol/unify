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
  end

  it 'should persist an event' do
    
    expect(Event.count).to eq(Event.count)
  end
end 