class CreateSpreePeople < ActiveRecord::Migration
  def change
    create_table :spree_people do |t|
      t.string :firstname
      t.string :lastname
      t.string :secondlastname
      t.string :email
      t.date :birthdate
      t.string :phone
      t.string :cellular
      t.string :type
      t.references :order, index: true
      t.references :address, index: true
    end
  end
end
