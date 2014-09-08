class Spree::Person < Spree::Base
  belongs_to :order
  belongs_to :address
end
