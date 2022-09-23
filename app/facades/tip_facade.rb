class TipFacade
  def self.get_tip(tip_id)
    TipService.get_tip(tip_id)
  end

  def self.create_tip(data)
    TipService.create_tip(data)
  end

  def self.users_tips(user_id)
    tips = TipService.find_tips(user_id)
    tips.each do |tip|
      TipPoro.new(tip)
    end
  end
end
