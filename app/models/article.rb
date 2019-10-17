class Article < ApplicationRecord

    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    has_many :comments

    validates :content, {presence: true}
    validates :title, {presence: true}


end
