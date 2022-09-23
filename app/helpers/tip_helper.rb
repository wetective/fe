module TipHelper
  def find_investigation(uid)
    inv = InvestigationFacade.find_investigation(uid)
    InvestigationPoro.new(inv)
  end
end