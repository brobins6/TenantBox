#Creating the Tenants table
class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :tenant
      t.string :email
      t.string :rent
      t.string :unreadMess
      t.string :maintenance
      t.string :messages
      t.string :propLoc
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
