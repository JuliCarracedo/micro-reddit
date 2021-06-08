class User < ApplicationRecord
    validates :username length:{maximum: 12}, presence: true, uniqueness: true
    validates :age presence: true, greater_than_or_equal_to: 13
    validates :email presence: true, format:{with: /@/}
end
