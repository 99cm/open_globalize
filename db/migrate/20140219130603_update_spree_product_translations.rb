class UpdateSpreeProductTranslations < ActiveRecord::Migration[5.2]
  def change
    if column_exists?(:spree_product_translations, :permalink)
      rename_column :spree_product_translations, :permalink, :slug
    end
  end
end