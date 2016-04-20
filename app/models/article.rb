class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :destroy

  delegate :name, to: :category, prefix: true
  delegate :tag, to: :category, prefix: true
end
