class User < ActiveRecord::Base
    has_many :favorites
    has_many :matches, through: :favorites
end