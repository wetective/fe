module InvestigationHelper
  def image_link_check(url)
    Faraday.new do |conn|
      response = conn.get(url)
      response.status
    end
  end

  def next_page
    @page = params[:page].to_i
  end
end