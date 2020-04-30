class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :password
      t.boolean :password_status
      t.integer :chat_log_id

      t.timestamps
    end
  end
end
