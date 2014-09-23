class Spree::Person < Spree::Base
  belongs_to :order
  belongs_to :address

  validates_presence_of :firstname, :lastname, :email

  def full_name
    (firstname.strip + ' ' + lastname.strip + ' ' + secondlastname.strip).strip
  end
end