module ApplicationHelper
	def render_svg(name, styles: "fill-current text-gray-400", title: nil)
    filename = "#{name}.svg"
    title ||= name.underscore.humanize
    inline_svg_tag(filename, aria: true, nocomment: true, title: title, class: styles)
  end

  def full_title(page_title = '')
  	base_title = "S A R A T H A Y E R"
  	if page_title.empty?
  		base_title
  	else
  		page_title + " | " + base_title
  	end
  end
end
