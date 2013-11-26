class AddEncryptedFieldsToMessages < ActiveRecord::Migration
  def change
  	add_column :messages, :encrypted_email, :string
  	add_column :messages, :encrypted_message, :string
  end
end
