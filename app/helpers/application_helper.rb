module ApplicationHelper
  def svg_icon(name, options = {})
    file_path = Rails.root.join("app", "assets", "images", "icons", "#{name}.svg")

    if File.exist?(file_path)
      svg_content = File.read(file_path)


      doc = Nokogiri::HTML::DocumentFragment.parse(svg_content)
      svg = doc.at_css("svg")


      svg["class"] = options[:class] if options[:class]
      svg["width"] = options[:width] if options[:width]
      svg["height"] = options[:height] if options[:height]
      svg["stroke"] = options[:stroke] if options[:stroke]


      doc.to_html.html_safe
    else
      "(SVG icon '#{name}' not found)"
    end
  end
end
