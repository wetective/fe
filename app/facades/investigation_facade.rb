class InvestigationFacade
  def self.create_investigations
    investigations = InvestigationService.get_investigations

    investigations.map do |investigation|
      if investigation[:status] != 'captured'
        InvestigationPoro.new(investigation)
      end
    end
  end  

  def self.create_investigation(uid)
    investigations = InvestigationService.get_investigations
 
    investigations.select do |investigation|
      if investigation[:status] != 'captured' && investigation[:uid] == uid
       return InvestigationPoro.new(investigation)
      end
    end
  end

  def cities_investigations(city)
    investigations = InvestigationService.get_investigations_by_city(city.downcase.tr(" ", ""))
    investigations.map do |investigation|
      InvestigationPoro.new(investigation)
    end
  end
end
