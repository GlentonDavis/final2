class Artist < ActiveRecord::Base
  belongs_to :songs
end