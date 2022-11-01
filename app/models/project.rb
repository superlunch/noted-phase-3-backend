class Project < ActiveRecord::Base
    has_many :notes
    has_many :users, through: :notes

    def notes
        Note.where(project_id: self.id)
    end
end