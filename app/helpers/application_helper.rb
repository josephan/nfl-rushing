module ApplicationHelper
  def filter_csv_params(params)
    {
      yrds: params[:yrds],
      lng: params[:lng],
      td: params[:td],
      format: 'csv'
    }
  end
end
