class List < ApplicationRecord
    has_many :movies, dependent: :destroy
    has_many :bookmarks
    validates :name, presence: true
    validates :name, uniqueness: { scope: :name, message: 'Name taken' }
end
