<<<<<<< HEAD:app/poros/tip_poro.rb
class TipPoro
  attr_reader :uid,
              :location,
              :date,
              :description,
              :time,
              :user_id
              
=======
class Tip
  attr_reader :uid,
              :location,
              :date,
              :time,
              :description,
              :user_id

>>>>>>> main:app/poros/tip.rb
  def initialize(attributes)
    @uid = attributes[:uid]
    @location = attributes[:location]
    @date = attributes[:date]
    @time = attributes[:time]
    @description = attributes[:description]
    @user_id = attributes[:user_id]
  end
end
