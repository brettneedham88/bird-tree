class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.references :bird, null: false, foreign_key: true

      t.timestamps
    end
  end
end
