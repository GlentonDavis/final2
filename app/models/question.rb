class Question < ActiveRecord::Base
  belongs_to :song
  belongs_to :survey
end
