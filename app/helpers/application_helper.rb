module ApplicationHelper
  #  display a dropdown of categories, 'categories' arugment is passed to represent
  # list of categories that users can choose from.
  def select2_category_dropdown(f, field_name, categories)
    # options_for_select helper method generates the options for the select tag and
    # passing selected value as an option
    options = options_for_select(categories, selected: f.object.send(field_name))

    # prompt to display message in the dropdown and add 'class' option to apply
    # select2 CSS class to the dropdown
    select_tag(field_name, options, prompt: 'Select a category', class: 'select2')
  end
end
