class AddPeopleInfoToAddress < ActiveRecord::Migration
  def change    
    add_column :spree_addresses, :type, :string
    add_column :spree_addresses, :secondlastname, :string
    add_column :spree_addresses, :birthdate, :date
  end
end
