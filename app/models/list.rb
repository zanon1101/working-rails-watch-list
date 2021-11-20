class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks
    validates :name, presence: true
    validates :name, uniqueness: { scope: :name, message: 'Name taken' }
end
