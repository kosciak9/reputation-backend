class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
end
