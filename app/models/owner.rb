class Owner < ApplicationRecord
    has_many :stocks, dependent: :destroy
end
