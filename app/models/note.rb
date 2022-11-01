class Note < ActiveRecord::Base
    belongs_to :user
    belongs_to :project

    def projs
        Project.where(id: self.project_id)
    end

    def proj_name
        self.project.title
    end

    def proj_id
        self.project.id
    end
end