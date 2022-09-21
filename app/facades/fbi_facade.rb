class FBIFacade
    def self.investigations
        data = FBIService.all
        unless data.nil?
            data.map do |investigation|
                Investigation.new(investigation)
            end
    end

end