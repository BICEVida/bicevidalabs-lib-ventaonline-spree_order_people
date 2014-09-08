class Spree::Person < Spree::Address
  belongs_to :order
end
