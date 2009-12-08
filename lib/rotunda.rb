module Rotunda

  def rounded_link_to(name, options={}, html_options=nil)
    content_tag(:div, link_to("<span>#{name}</span>", options, html_options), :class => "rounded")
  end
  
  def rounded_link_to_function(name, *args, &block)
    content_tag(:div, link_to_function("<span>#{name}</span>", *args, &block), :class => "rounded")
  end

  def rounded_button(label)
    content_tag(:div, "<button><span>#{label}</span></button>", :class => "rounded")
  end

end