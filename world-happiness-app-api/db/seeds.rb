# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#!/usr/bin/env ruby
require 'csv'

COLUMNS = [
  'Country',
  'Happiness.Rank',
  'Happiness.Score',
  'Whisker.high',
  'Whisker.low',
  'Economy..GDP.per.Capita.',
  'Family,Health..Life.Expectancy.',
  'Freedom',
  'Generosity',
  'Trust..Government.Corruption.',
  'Dystopia.Residual'
]

print "\nSeeding..."

dir = File.dirname(File.expand_path(__FILE__))
lineno = 1
CSV.foreach(File.join(dir, 'raw-ndb.csv'), 'r:ISO8859-1') do |row|
  lineno = $.

  next if lineno == 1
  print '.' if lineno % 1000 == 0

  # Humanize descriptions
  row[1] = row[1].capitalize.gsub(/([\,\/])\s*/, '\1 ').gsub(/\s*\&\s*/, ' \1 ')

  entry = {}

  COLUMNS.each_with_index do |column, idx|
    entry[column] = row[idx]
  end

  Country.create!(entry)
end

print "done."
print "\n#{lineno} country entries imported."