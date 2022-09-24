class InvestigationsController < ApplicationController
  include AnimalHelper
  before_action :set_user_id

  def index
    @page = 1
    @user_id = params[:user_id]
    @investigations = InvestigationFacade.get_all_investigations(@page)
    process_investigations
  end
  
  def show    
    @investigation = InvestigationFacade.get_investigation(params[:id])
  end

  private
    def process_investigations
      @investigations.compact!
      @investigations.shuffle!
      @investigation_images = @investigations.each_with_index do |investigation, idx|
        if idx % 20 == 0
          random_dog
        elsif idx % 10 == 0
          random_dog
        else
          investigation
        end
      end
    end
end
