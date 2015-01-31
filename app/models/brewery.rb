class Brewery < ActiveRecord::Base
  belongs_to :state
  has_many :reviews

  validates :name, presence: true
  validates :location, presence: true
end
