module PagesHelper
  def sort_options(field_name)
    [
      [field_name, 0],
      ['ASC', 1],
      ['DESC', 2]
    ]
  end
end
