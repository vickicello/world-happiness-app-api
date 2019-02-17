class AddImgUrlToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :img_url, :string, default: ""
  end
end