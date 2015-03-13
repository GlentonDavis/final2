class Survey < ActiveRecord::Base
  belongs_to :song
  belongs_to :user
  #has_many :questions, dependent: :destroy
  #has_many :songs, through: :questions
end