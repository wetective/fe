class InvestigationFacade
  def self.get_all_investigations(page)
    investigations = InvestigationService.get_open_investigations(page)

    investigations[:items].map do |investigation|
      InvestigationPoro.new(investigation)
    end
  end  

  def self.get_investigation(uid)
    @investigation = InvestigationService.get_investigation_by_uid(uid)
    @investigation = InvestigationPoro.new(@investigation)
  end

  def self.find_investigation(uid)
    @investigation = InvestigationService.get_investigation_by_uid(uid)
  end

  def self.cities_investigations(city)
    investigations = InvestigationService.get_investigations_by_city(city.downcase.tr(" ", ""))
    investigations.map do |investigation|
      InvestigationPoro.new(investigation)
    end
  end
end
