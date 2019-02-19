class ChangeTranslationMetaTitleToProduct < ActiveRecord::Migration[5.2]]
  def change
    change_column :spree_product_translations, :meta_title, :string
  end
end