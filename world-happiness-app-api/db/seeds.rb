#!/usr/local/bin/ruby
require 'csv'

COLUMNS = [
  'country',
  'happiness_rank',
  'happiness_score',
  'whisker_high',
  'whisker_low',
  'economy',
  'family',
  'health',
  'freedom',
  'generosity',
  'trust',
  'dystopia_residual',
  'img_url'
]


csv_text = File.read(Rails.root.join('lib', 'seeds', '2017_wh.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  c = Country.new
  c.country = row['Country']
  c.happiness_rank = row['Happiness.Rank']
  c.happiness_score = row['Happiness.Score']
  c.whisker_high = row['Whisker.high']
  c.whisker_low = row['Whisker.low']
  c.economy = row['Economy..GDP.per.Capita.']
  c.family = row['Family']
  c.health = row['Health..Life.Expectancy.']
  c.freedom = row['Freedom']
  c.generosity = row['Generosity']
  c.trust = row['Trust..Government.Corruption.']
  c.dystopia_residual = row['Dystopia.Residual']
  c.save
  puts "#{c.country}, #{c.happiness_rank} saved"
end

puts "There are now #{Country.count} rows in the countries table"
