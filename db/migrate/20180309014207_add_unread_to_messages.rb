#Creating a table for Unread Messages
class AddUnreadToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :unread, :integer
  end
end
