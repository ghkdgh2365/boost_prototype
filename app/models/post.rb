class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :user
    belongs_to :bulletin
    has_one :confirm
end
