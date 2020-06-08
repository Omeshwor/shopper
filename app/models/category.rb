class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories, source: :product_categories_table_foreign_key_to_products_table
end
