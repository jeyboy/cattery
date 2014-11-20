ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  # if instance.error_message.first
  html_tag.html_safe
end