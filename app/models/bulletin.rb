class Bulletin < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    as_enum :post_type, bulletin: 0, blog: 1, gallery: 2
    belongs_to :user
end
