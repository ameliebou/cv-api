class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.integer :graduation_date
      t.string :degree
      t.string :institute
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
