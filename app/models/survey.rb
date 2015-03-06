class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :songs, through: :questions
end
