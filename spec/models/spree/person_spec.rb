require 'spec_helper'

describe Spree::Person do
  context 'always' do
    # Attributes

    it 'has a second last name' do
      expect(subject).to respond_to(:secondlastname)
    end

    it 'has a birthdate' do
      expect(subject).to respond_to(:birthdate)
    end

    # Association
    it 'has an order' do
      expect(subject).to respond_to(:order_id)
    end
  end
end
