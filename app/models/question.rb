class Question < ActiveRecord::Base
  belongs_to :songs
  has_many :answers
end