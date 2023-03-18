module ApplicationHelper
  def display_errors_for(model)
    return "" if model.errors.empty?

    content_tag(:div, class: "alert alert-danger") do
      content_tag(:ul) do
        model.errors.full_messages.map do |msg|
          concat content_tag(:li, msg)
        end
      end
    end
  end
end
