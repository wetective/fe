class TipPoro
  attr_reader :uid,
              :location,
              :date,
              :description,
              :user_id
              
  def initialize(tip)
    @uid = tip[:attributes][:uid]
    @location = tip[:attributes][:location]
    @date = tip[:attributes][:date]
    @description = tip[:attributes][:description]
    @user_id = tip[:attributes][:user_id]
  end
end
