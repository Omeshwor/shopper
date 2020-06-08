class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :categories, null: false, foreign_key: true
      
      t.timestamps
    end

    add_foreign_key :product_categories, :products, name: 'fk_product_categories_to_products'
    add_foreign_key :product_categories, :categories, name: 'fk_product_categories_to_categories'
  end
end
