class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.belongs_to :product, null: false, foreign_key: true, name: 'fk_product_categories_to_products'
      t.belongs_to :category, null: false, foreign_key: true, name: 'fk_product_categories_to_categories'
      
      t.timestamps
    end
  end
end
