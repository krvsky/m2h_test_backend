class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :vertical, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
