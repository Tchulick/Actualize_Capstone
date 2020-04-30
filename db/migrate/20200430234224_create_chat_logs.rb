class CreateChatLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_logs do |t|
      t.text :text

      t.timestamps
    end
  end
end
