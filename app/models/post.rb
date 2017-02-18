class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :user
    belongs_to :bulletin
    has_one :confirm
    validates :title, presence: true
    validates :content, presence: true
    validates :title, presence: true
    validates :set_money, presence: true
    validates :checker_name, presence: true
    validates :receiver_name, presence: true
    validates :racer_name, presence: true
end
