#Creating the Users table
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :group
      t.timestamps null: false
    end
  def show 
    user= User.find(params[:id])
  end
  end
end
