class CustomerNotifications < ActiveRecord::Migration
  def self.up
    create_table :customer_notifications do |t|
      t.integer :customer_id, :null=>false
      t.integer :notification_message_id, :null=>false
      t.timestamps
    end
    add_index :customer_notifications, :customer_id, :unique=>false
    add_index :customer_notifications, :notification_message_id, :unique=>false
  end

  def self.down
    drop :customer_notifications
  end
end
