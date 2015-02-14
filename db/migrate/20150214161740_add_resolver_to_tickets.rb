class AddResolverToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :resolver, index: true
    add_foreign_key :tickets, :users
  end
end
