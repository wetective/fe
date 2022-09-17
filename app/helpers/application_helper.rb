module ApplicationHelper
  def to_link(text)
    link_to text, reveal_path(text), params: { data_id: text }
    # text.gsub(/(http:\/\/[^\s]+)/, '<a href="\1">\1</a>')
  end

  def city_link?
    
  end
end
