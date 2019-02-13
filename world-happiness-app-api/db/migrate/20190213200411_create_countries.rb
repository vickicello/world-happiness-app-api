class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country
      t.integer :happiness_rank
      t.float :happiness_score, :precision => 4, :scale => 1
      t.float :whisker_high, :precision => 4, :scale => 1
      t.float :whisker_low, :precision => 4, :scale => 1
      t.float :economy, :precision => 4, :scale => 1
      t.float :family, :precision => 4, :scale => 1
      t.float :health, :precision => 4, :scale => 1
      t.float :freedom, :precision => 4, :scale => 1
      t.float :generosity, :precision => 4, :scale => 1
      t.float :trust, :precision => 4, :scale => 1
      t.float :dystopia_residual, :precision => 4, :scale => 1

      t.timestamps
    end
  end
end
