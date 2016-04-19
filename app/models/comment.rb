class Comment < ActiveRecord::Base
  belongs_to :article

  delegate :name, to: :article, prefix: true, allow_nil: true
end
