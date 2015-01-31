class Review < ActiveRecord::Base
  belongs_to :brewery

  validates :title, presence: :true
  validates :rating, inclusion: 0..5

end
