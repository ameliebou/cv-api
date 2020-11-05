class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :address
      t.string :phone_number
      t.string :github
      t.string :linkedin
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
