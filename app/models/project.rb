class Project < ActiveRecord::Base
    has_many :notes, dependent: :destroy
    has_many :users, through: :notes
end