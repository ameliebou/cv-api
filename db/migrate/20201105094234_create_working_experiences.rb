class CreateWorkingExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :working_experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :company
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
