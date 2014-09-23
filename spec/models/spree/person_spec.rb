require 'spec_helper'

describe Spree::Person do
  context 'always' do
    # Attributes
    it 'has a first name' do
      expect(build(:person)).to respond_to :firstname
    end

    it 'has a last name' do
      expect(build(:person)).to respond_to :lastname
    end

    it 'has a second last name' do
      expect(build(:person)).to respond_to :secondlastname
    end

    it 'has an email' do
      expect(build(:person)).to respond_to :email
    end

    it 'has a birthdate' do
      expect(build(:person)).to respond_to :birthdate
    end

    it 'has a phone number' do
      expect(build(:person)).to respond_to :phone
    end

    it 'has a cellular number' do
      expect(build(:person)).to respond_to :cellular
    end

    it 'has a type' do
      expect(build(:person)).to respond_to :type
    end

    # Associations
    it 'belongs to an order' do
      expect(build(:person)).to belong_to :order
    end

     it 'belongs to an address' do
      expect(build(:person)).to belong_to :address
    end
  end

  # Validation
  it 'has a valid factory' do
    expect(build(:person)).to be_valid
  end

  it 'has an invalid factory' do
    expect(build(:invalid_person)).not_to be_valid
  end

  # Methods
  it 'returns a string as the full name of the person' do
    expect(build(:person, secondlastname: '').full_name).to be_instance_of(String)
  end

  it 'returns the full name of a person' do
    expect(build(:person, lastname: '1', secondlastname: '').full_name).to eq('Person 1')
  end
end
