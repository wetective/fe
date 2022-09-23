class TipFacade
  def self.get_tip(user_id, tip_id)
    TipService.get_tip(user_id, tip_id)
  end

  def self.create_tip(data)
    TipService.create_tip(data)
  end

  def self.users_tips(user_id)
    tips = TipService.find_tips(user_id.to_i)
    tips[:data].each do |tip|
      TipPoro.new(tip)
    end
  end
end
