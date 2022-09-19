class InvestigationFacade
  
  def self.create_investigations
    investigations = InvestigationService.get_investigations

    investigations.map do |investigation|
      if investigation[:status] != 'captured'
        Investigation.new(investigation)
      end
    end
  end  

  def self.create_investigation(uid)
    investigations = InvestigationService.get_investigations

    investigations.select do |investigation|
      if investigation[:uid] == uid
       return Investigation.new(investigation)
      end
    end
  end
end
