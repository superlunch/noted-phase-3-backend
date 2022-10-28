class User < ActiveRecord::Base
    has_many :notes, dependent: :destroy
    has_many :projects, through: :notes
end