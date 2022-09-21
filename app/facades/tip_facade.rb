class TipFacade 
  def self.find_tips(tip_id)
    tips = TipService.find_tip(info)
    tips.each do |tip|
      Tip.new(tip)
    end
  end

  def self.create_tip(tip, investigation)
    attributes = TipService.create_tip(info)
  end
end