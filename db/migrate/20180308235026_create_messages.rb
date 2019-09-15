#Creating the Messages table
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :receiver
      t.string :content
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
