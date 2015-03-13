class Question < ActiveRecord::Base
  belongs_to :song
  belongs_to :survey
  has_many :answers
  #has_many :questions, dependent: :destroy
  #has_many :songs, through: :questions
end