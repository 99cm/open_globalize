class AddLocaleToFriendlyIdSlugs < ActiveRecord::Migration[5.2]
  def change
    add_column :friendly_id_slugs, :locale, :string
  end
end