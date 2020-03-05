class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :nickname
      t.string :species
      t.string :date
      t.string :planting
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
