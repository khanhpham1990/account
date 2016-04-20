class Category < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  has_many :comments, through: :articles

  validates :name, presence: true
end
