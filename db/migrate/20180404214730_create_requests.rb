#Requests table being created
class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :address
      t.string :name
      t.string :email
      t.string :option
      t.text :body

      t.timestamps null: false
    end
  end
end
