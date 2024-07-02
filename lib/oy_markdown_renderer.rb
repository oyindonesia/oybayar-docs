require 'middleman-core/renderers/redcarpet'
require 'fastimage'
require 'base64'
require 'digest'

class OyMarkdownRenderer < Middleman::Renderers::MiddlemanRedcarpetHTML
  
  def initialize
    super
    @head_count = {}
    @previous = {}
  end

  # Unique header generation
  def header(text, header_level)
    friendly_text = text.gsub(/<[^>]*>/,"").parameterize
    if(friendly_text.include? "release-")
      idxTrim = friendly_text.index('release-')
      friendly_text = friendly_text[0, idxTrim]
      if friendly_text[friendly_text.length-1] == '-'
        friendly_text = friendly_text[0, friendly_text.length-1]
      end
    end
    if(friendly_text.include? "new")
      idxTrim = friendly_text.index('new')
      friendly_text = friendly_text[0, idxTrim]
      if friendly_text[friendly_text.length-1] == '-'
        friendly_text = friendly_text[0, friendly_text.length-1]
      end
    end
    if friendly_text.strip.length == 0
      # Looks like parameterize removed the whole thing! It removes many unicode
      # characters like Chinese and Russian. To get a unique URL, let's just
      # URI escape the whole header
      friendly_text = Digest::SHA1.hexdigest(text)[0,10]
    end
    if (@previous[header_level] == nil )|| (@previous[header_level] != friendly_text)
      @previous[header_level] = friendly_text
    end

    if header_level > 1 
      friendly_text += "-#{@previous[header_level-1]}"
    end

    @head_count[friendly_text] ||= 0
    @head_count[friendly_text] += 1
    if @head_count[friendly_text] > 1
      friendly_text += "-#{@head_count[friendly_text]}"
    end
    if(text.include? "RELEASE")
      idxTrim = text.index("RELEASE-")
      content = text[0,idxTrim]
      releaseDate = text[idxTrim+"RELEASE-".length, text.length]
      return "<h#{header_level} id='#{friendly_text}' type='beta'>#{content} <span class='tags beta'>release on #{releaseDate}</span> </h#{header_level}>"
    elsif(text.include? "NEW")
      idxTrim = text.index("NEW")
      content = text[0,idxTrim]
      return "<h#{header_level} id='#{friendly_text}' type='new'>#{content} <span class='tags new'>NEW</span> </h#{header_level}>"
    else
      return "<h#{header_level} id='#{friendly_text}' type='normal'>#{text}</h#{header_level}>"
    end
  end

  # Reduce jumpy-ness when loading multiple images
  def image(link, title, alt_text)
    # build svg placeholder
    img_path = File.join(File.dirname(__FILE__), '../source', link)
    size = FastImage.size(img_path)
    width, height = size ? size : [300, 300]
    aspect_ratio = (height.to_f / width.to_f) * 100

    svg_content = <<-SVG
    <svg width="#{width}" height="#{height}" xmlns="http://www.w3.org/2000/svg">
      <rect width="100%" height="100%" fill="none" stroke="none" />
    </svg>
    SVG
    encoded_svg = Base64.strict_encode64(svg_content)

    # keep the alt empty and don't use width and height property
    return %{<div class="aspect-ratio" style="padding-bottom: #{aspect_ratio}%;"><img src="data:image/svg+xml;base64,#{encoded_svg}" data-src="#{link}" loading="lazy" class="lazyload" title="#{title}" alt="#{alt_text}"></div>}
  end
end
