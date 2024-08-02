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
    svg_placeholder = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMDAgMTAwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJ4TWlkWU1pZCIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHN0eWxlPSJzaGFwZS1yZW5kZXJpbmc6IGF1dG87IGRpc3BsYXk6IGJsb2NrOyBiYWNrZ3JvdW5kOiByZ2IoMjU1LCAyNTUsIDI1NSk7IiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgPGc+CiAgICA8Y2lyY2xlIHN0cm9rZS1kYXNoYXJyYXk9IjE2NC45MzM2MTQzMTM0NjQxNSA1Ni45Nzc4NzE0Mzc4MjEzOCIgcj0iMzUiIHN0cm9rZS13aWR0aD0iMTAiIHN0cm9rZT0iIzBkNDdhMSIgZmlsbD0ibm9uZSIgY3k9IjUwIiBjeD0iNTAiPgogICAgICA8YW5pbWF0ZVRyYW5zZm9ybSBrZXlUaW1lcz0iMDsxIiB2YWx1ZXM9IjAgNTAgNTA7MzYwIDUwIDUwIiBkdXI9IjFzIiByZXBlYXRDb3VudD0iaW5kZWZpbml0ZSIgdHlwZT0icm90YXRlIiBhdHRyaWJ1dGVOYW1lPSJ0cmFuc2Zvcm0iPjwvYW5pbWF0ZVRyYW5zZm9ybT4KICAgIDwvY2lyY2xlPgogICAgPGc+PC9nPgogIDwvZz4KPC9zdmc+"

    # lazy load image to reduce page jumps
    return %{<img src="#{svg_placeholder}" data-src="#{link}" loading="lazy" class="lazyload" title="#{title}" alt="#{alt_text}">}
  end
end
