require 'spec_helper'

describe Spree::Address do
  context 'always' do
    # Attributes

    it 'has a type' do
      expect(subject).to respond_to :type
    end
  end
end
