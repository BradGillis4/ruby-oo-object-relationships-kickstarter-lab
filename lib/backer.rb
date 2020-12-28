class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end


        def backed_projects
            ProjectBacker.all
            .select {|backer| backer.backer == self}
            .map {|project| project.project}
          end
    
end