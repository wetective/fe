class TipFacade
  def self.create_tips
    tips = TipService.create_tips
    tips.map do |tip|
      if tip[:user_id] == current_user.id
        Tip.new(tip)
      end
    end
  end

  def cities_tips(user_id)
    tips = TipService.get_user_tips(user_id)
    tips.map do |tip|
      Tip.new(tip)
    end
  end
end