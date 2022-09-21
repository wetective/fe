class TipService
  def self.get_user_tips(user_id)
    response = conn.get('api/v1/user/:id/tips')
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    def self.conn
      Faraday.new(url: 'http://localhost:4999/')
    end
end
