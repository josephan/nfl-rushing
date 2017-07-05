module ApplicationHelper
  def filter_csv_params(params)
    {
      name:    params[:name],
      yrds:    params[:yrds],
      lng:     params[:lng],
      td:      params[:td],
      format:  'csv'
    }
  end
end
