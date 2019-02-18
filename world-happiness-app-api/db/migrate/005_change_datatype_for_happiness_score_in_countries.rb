class ChangeDatatypeForHappinessScoreInCountries < ActiveRecord::Migration[5.2]
  def change
    change_column :countries, :happiness_score, :decimal, :precision => 4, :scale => 3
  end
end