class RemoveImgUrlFromCountries < ActiveRecord::Migration[5.2]
  def change
    remove_column :countries, :img_url, :string
  end
end