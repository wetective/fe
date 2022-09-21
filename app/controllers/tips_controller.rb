class TipsController < ApplicationController

  def index
    @tips = TipFacade.get_tips
  end

  def new
    # @tip = Tip.new
  end
end