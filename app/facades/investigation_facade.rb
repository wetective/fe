class InvestigationFacade
  def self.create_investigations
    investigations = InvestigationService.get_investigations
    investigations.map do |investigation|
      if investigation[:status] != 'captured'
        Investigation.new(investigation)
      end
    end
  end

  def cities_investigations(city)
    investigations = InvestigationService.get_investigations_by_city(city.downcase.tr(" ", ""))
    investigations.map do |investigation|
      Investigation.new(investigation)
    end
  end
end