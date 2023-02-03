class User < ApplicationRecord
has_many :checkins
has_many :events, through: :checkins
end
