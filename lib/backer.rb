require_relative "project_backer.rb"
require_relative "project.rb"

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        temp = ProjectBacker.all.select {|relation| relation.backer == self}
        temp.map {|each_object| each_object.project}
    end
end