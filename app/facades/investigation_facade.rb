class InvestigationFacade
  def self.get_all_investigations
    investigations = InvestigationService.get_investigations

    investigations.map do |investigation|
      InvestigationPoro.new(investigation)
    end
  end  

  def self.get_investigation(uid)
    @investigation = InvestigationService.get_investigation_by_uid(uid)

    if @investigation[0][:status] != 'captured' 
      return @investigation = InvestigationPoro.new(@investigation)
    end
  end

  def self.cities_investigations(city)
    investigations = InvestigationService.get_investigations_by_city(city.downcase.tr(" ", ""))
    investigations.map do |investigation|
      InvestigationPoro.new(investigation)
    end
  end
end
