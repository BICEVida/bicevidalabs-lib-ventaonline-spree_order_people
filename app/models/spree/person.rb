class Spree::Person < Spree::Base
  belongs_to :order
  belongs_to :address

  validates_presence_of :firstname, :lastname, :email

  def full_name
    (firstname.strip + ' ' + lastname.strip + ' ' + secondlastname.strip).strip
  end

  def person_params
    params.require(:person).permit(:firstname, :lastname, :secondlastname, :email, :birthdate, :phone, :cellular, :order_id, :address_id)
  end
end