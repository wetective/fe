class TipPoro
  attr_reader :uid,
              :location,
              :date,
              :description,
              :time,
              :user_id
              
  def initialize(attributes)
    @uid = attributes[:uid]
    @location = attributes[:location]
    @date = attributes[:date]
    @time = attributes[:time]
    @description = attributes[:description]
    @user_id = attributes[:user_id]
  end
end