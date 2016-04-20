class Comment < ActiveRecord::Base
  belongs_to :article

  delegate :name, to: :article, prefix: true, allow_nil: true
  delegate :content, to: :article, prefix: true, allow_nil: true

  class << self
    def comment_article
      Comment.includes(:article)
    end
  end
end
