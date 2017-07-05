module PagesHelper
  def sort_options(field_name)
    [
      [field_name, nil],
      ['ASC', 'ASC'],
      ['DESC', 'DESC']
    ]
  end
end
