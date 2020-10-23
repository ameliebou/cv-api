class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :url
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
