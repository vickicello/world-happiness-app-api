class CountrySerializer < ActiveModel::Serializer
  attributes :id, :country, :happiness_rank, :happiness_score, :whisker_high, :whisker_low, :economy, :family, :health, :freedom, :generosity, :trust, :dystopia_residual
end
