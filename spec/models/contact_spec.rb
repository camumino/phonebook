require 'rails_helper'

RSpec.describe Contact, type: :model do
  
  it "has a valid factory" do
    contact = create(:contact)
    expect(contact).to be_valid
  end

  it "is not valid without name" do
    contact = build(:contact, name: "")
    expect(contact).not_to be_valid
  end

  it "is not valid without surname" do
    contact = build(:contact, surname: "")
    expect(contact).not_to be_valid
  end

  it "is not valid without email" do
    contact = build(:contact, email: "")
    expect(contact).not_to be_valid
  end

    it "is not valid with existent email" do
    contact = create(:contact, email: "email@example.com")
    contact2 = build(:contact, email: "email@example.com")

    expect(contact2).not_to be_valid
  end  

end
