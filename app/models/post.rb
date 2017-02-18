class Post < ActiveRecord::Base
    belongs_to :bulletin
    has_one :confirm
end
