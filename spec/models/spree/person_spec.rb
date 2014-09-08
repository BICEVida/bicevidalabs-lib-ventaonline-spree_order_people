require 'spec_helper'

describe Spree::Person do
  context 'always' do
    # Attributes
    it 'has a first name' do
      expect(subject).to respond_to :firstname
    end

    it 'has a last name' do
      expect(subject).to respond_to :lastname
    end

    it 'has a second last name' do
      expect(subject).to respond_to :secondlastname
    end

    it 'has an email' do
      expect(subject).to respond_to :email
    end

    it 'has a birthdate' do
      expect(subject).to respond_to :birthdate
    end

    it 'has a phone number' do
      expect(subject).to respond_to :phone
    end

    it 'has a cellular number' do
      expect(subject).to respond_to :cellular
    end

    it 'has a type' do
      expect(subject).to respond_to :type
    end

    # Associations
    it 'belongs to an order' do
      expect(subject).to respond_to :order_id
    end

     it 'belongs to an address' do
      expect(subject).to respond_to :address_id
    end
  end
end
