module ApplicationHelper
  def to_link(text)
    link_to(text, method: :show, params: { data_id: text })
    # text.gsub(/(http:\/\/[^\s]+)/, '<a href="\1">\1</a>')
  end
end
