class Email < ApplicationRecord
    validates :object, :body, presence: true, uniqueness: true
end
