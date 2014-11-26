module ApplicationHelper
  def init_form_fields_mandatory(f)
    validator = f.object.class.validators.detect {|a| a.kind == :presence}
    f.instance_variable_set(:@mandatory, (validator.attributes if validator) || [])
  end
end
