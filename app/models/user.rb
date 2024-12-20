class User < ApplicationRecord
    has_many :todo_lists
    validates :name, presence: true
  end
  