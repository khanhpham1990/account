class Comment < ActiveRecord::Base
  belongs_to :article

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  delegate :name, to: :article, prefix: true, allow_nil: true
  delegate :content, to: :article, prefix: true, allow_nil: true

  class << self
    def comment_article
      Comment.includes(:article)
    end
  end
end
