class AddOrderReferenceToAddress < ActiveRecord::Migration
  def change
    add_reference :spree_addresses, :order, index: true
  end
end
