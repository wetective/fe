class InvestigationFacade

  def self.create_investigations
    investigations = InvestigationService.get_investigations
    binding.pry
    investigations.map do |investigation|
      if investigation[:status] != 'captured'
        Investigation.new(investigation)
      end
    end
  end
end
