class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def backers
        ProjectBacker.all
        .select{|backer| backer.project == self}
        .map{ |backer| backer.backer}
      end
    
      def add_backer(backer)
        ProjectBacker.new(self, backer)
      end
    end