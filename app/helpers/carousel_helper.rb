module CarouselHelper
  def carousel_for(images)
    Carousel.new(self, images).html
  end
  
  class Carousel
    include AnimalHelper
    def initialize(view, images)
      @view = view
      @images = images 
      @cid = SecureRandom.hex(6)
    end

    def html
      content = view.safe_join([indicators, slides, controls])
      view.content_tag(:div, content, class: 'carousel slide')
    end


    private

    attr_accessor :view, :images, :cid
    delegate :link_to, 
             :content_tag, 
             :image_tag, 
             :safe_join, 
         to: :view

    def indicators
      if images.is_a?(Array)
        items = images.count.times.map { |index| indicator_tag(index) }
      else
        items = indicator_tag(0)
      end
      content_tag(:ol, safe_join(items), class: 'carousel-indicators')
    end

    def indicator_tag(index)
      options = {
        class: (index.zero? ? 'active' : ''),
        data: { 
          target: cid, 
          slide_to: index 
        }
      }

      content_tag(:li, '', options)
    end

    def slides
      items = images.map.with_index { |image, index| slide_tag(image, index.zero?) }
      content_tag(:div, safe_join(items), class: 'carousel-inner')
    end

    def slide_tag(image, is_active)
      options = {
        class: (is_active ? 'item active' : 'item'),
      }

      content_tag(:div, image_tag(image), options)
    end

    def controls
      safe_join([control_tag('left'), control_tag('right')])
    end

    def control_tag(direction)
      options = {
        class: "#{direction} carousel-control",
        data: { slide: direction == 'left' ? 'prev' : 'next' }
      }

      icon = content_tag(:i, nil, class: "glyphicon glyphicon-chevron-#{direction}")
      control = link_to(icon, "##{cid}", options)
    end
  end
end