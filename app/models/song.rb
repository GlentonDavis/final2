class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :questions
  has_many :answers, through: :questions
  has_many :reviews
end