class NotificationMessages < ActiveRecord::Migration
  def self.up
    create_table :notification_messages do |t|
      t.string :notification_type, :limit=>100, :null=>false
      t.integer :priority
      t.string :status, :limit=>20, :null=>false
      t.string :contentType, :limit=>100
      t.text :message
      t.timestamps
    end
    add_index :notification_messages, :notification_type, :unique=>false
  end

  def self.down
    drop :notification_messages
  end
end
