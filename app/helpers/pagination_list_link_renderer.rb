class PaginationListLinkRenderer < WillPaginate::ActionView::LinkRenderer
  protected

  def page_number(page)
    link(page, page, rel: rel_value(page))
  end

  def gap
    text = @template.will_paginate_translate(:page_gap) { '&hellip;' }
    %(<li class='unavailable'>#{text}</li>)
  end

  def previous_or_next_page(page, text, classname)
    if page
      link(text, page, class: classname + ' arrow')
    else
      tag(:li, text, class: classname + ' unavailable arrow')
    end
  end

  def html_container(html)
    tag(:ul, html, container_attributes)
  end

  private
  def link(text, target, attributes = {})
    li_class = if target.is_a? Fixnum
      attributes[:rel] = rel_value(target)
      target = url(target)
      'current' if text == current_page
    end
    attributes[:href] = target
    "<li class='#{li_class}'>#{tag(:a, text, attributes)}</li>"
  end

  def tag(name, value, attributes = {})
    string_attributes = attributes.inject('') do |attrs, pair|
      unless pair.last.nil?
        attrs << %( #{pair.first}="#{CGI::escapeHTML(pair.last.to_s)}")
      end
      attrs
    end
    "<#{name}#{string_attributes}>#{value}</#{name}>"
  end

  def rel_value(page)
    case page
      when @collection.current_page - 1; 'prev' + (page == 1 ? ' start' : '')
      when @collection.current_page + 1; 'next'
      when 1; 'start'
    end
  end
end