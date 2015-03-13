class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :surveys 
  #has_many :questions
  #has_many :surveys, through: :questions

  validates :name, presence: :true
end