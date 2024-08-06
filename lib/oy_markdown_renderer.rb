require 'middleman-core/renderers/redcarpet'
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
    # 300x300 transparent svg for placeholder to keep overall structure intact
    svg_placeholder = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9Ii0xNTAgLTE1MCA0MDAgNDAwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJ4TWlkWU1pZCIgd2lkdGg9IjMwMCAiIGhlaWdodD0iMzAwIiBzdHlsZT0ic2hhcGUtcmVuZGVyaW5nOiBhdXRvOyBkaXNwbGF5OiBibG9jazsgYmFja2dyb3VuZDogcmdiKDI1NSwgMjU1LCAyNTUpOyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxjaXJjbGUgc3Ryb2tlLWRhc2hhcnJheT0iMTY0LjkzMzYxNDMxMzQ2NDE1IDU2Ljk3Nzg3MTQzNzgyMTM4IiByPSIzNSIgc3Ryb2tlLXdpZHRoPSIxMCIgc3Ryb2tlPSIjMGQ0N2ExIiByYWRpdXM9IjEwMCIgZmlsbD0ibm9uZSIgY3k9IjUwIiBjeD0iNTAiPjxhbmltYXRlVHJhbnNmb3JtIGtleVRpbWVzPSIwOzEiIHZhbHVlcz0iMCA1MCA1MDszNjAgNTAgNTAiIGR1cj0iMXMiIHJlcGVhdENvdW50PSJpbmRlZmluaXRlIiB0eXBlPSJyb3RhdGUiIGF0dHJpYnV0ZU5hbWU9InRyYW5zZm9ybSI+PC9hbmltYXRlVHJhbnNmb3JtPjwvY2lyY2xlPjxnPjwvZz48L2c+PC9zdmc+"

    # lazy load image to reduce page jumps
    return %{<img src="#{svg_placeholder}" data-src="#{link}" loading="lazy" class="lazyload" title="#{title}" alt="#{alt_text}">}
  end
end
