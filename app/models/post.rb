class Post < ApplicationRecord
    # validates_presence_of :title
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :content, presence: true, length: {minimum: 5, maximum: 500}
    has_rich_text :content
    has_many :comments, dependent: :destroy
end
