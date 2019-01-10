module PositionPapersHelper
  
  def render_markdown_as_html text
    require 'redcarpet'
    renderer = Redcarpet::Render::HTML 
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(text).html_safe
  end
  
end
