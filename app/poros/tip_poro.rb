class TipPoro
  attr_reader :uid,
              :location,
              :date,
              :description,
              :user_id,
              :created_at,
              :updated_at
              
  def initialize(tip)
    @uid = tip[:uid]
    @location = tip[:location]
    @date = tip[:date]
    @description = tip[:description]
    @user_id = tip[:user_id]
    @created_at = tip[:created_at]
    @updated_at = tip[:updated_at]
  end
end
