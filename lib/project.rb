require_relative "project_backer.rb"
require_relative "backer.rb"

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        temp = ProjectBacker.all.select {|relation| relation.project == self}
        temp.map {|each_object| each_object.backer}
    end
end