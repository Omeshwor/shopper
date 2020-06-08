class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false, limit: 100

      t.timestamps

      t.index :title, unique: true
    end
  end
end
