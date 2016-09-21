class Location < ActiveRecord::Base
  def self.pluck_to_hash(keys)
    pluck(*keys).map{|pa| Hash[*keys.zip(pa).flatten]}
  end
end
