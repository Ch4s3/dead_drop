class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.string :slug
      t.string :email

      t.timestamps
    end
  end
end
