class Product < ApplicationRecord
    has_many :product_categories
    has_many :categories, through: :product_categories, source: :product_categories_table_foreign_key_to_categories_table
end
