class PagesController < ApplicationController
  def home
    @rushing_stats = RushingStat.all
  end

  def filter
    @rushing_stats = RushingStat.search_by_name(params["name"])
                                .order(order_query)

    respond_to do |format|
      format.html { render "home"}
      format.csv  { send_data @rushing_stats.to_csv, filename: "rushing.csv" }
    end
  end

  private

  def order_query
    query = {}
    query[:yrds] = params["yrds"] unless params["yrds"].empty?
    query[:lng]  = params["lng"]  unless params["lng"].empty?
    query[:td]   = params["td"]   unless params["td"].empty?
    query
  end
end
