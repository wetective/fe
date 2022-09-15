class WantedFacade
  
  def self.create_wanted_list
    wanted_list = WantedService.get_wanted_list
    wanted_list.map do |wanted|
      if wanted[:status] != 'captured'
        Wanted.new(wanted)
      end
    end
  end
end