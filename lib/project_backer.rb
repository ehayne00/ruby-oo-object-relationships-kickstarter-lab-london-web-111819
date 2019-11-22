require_relative "backer.rb"
require_relative "project.rb"

class ProjectBacker
    attr_reader :backer, :project

    @@all = []
    def initialize(project,backer)
        @backer = backer
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end

    def backer
        @backer
    end

    def project
        @project
    end
end