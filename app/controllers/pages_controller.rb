class PagesController < ApplicationController
  def home
    @rushing_stats = RushingStat.all
  end

  def filter
    @rushing_stats = RushingStat.all

    respond_to do |format|
      format.html { render "home"}
      format.csv  { send_data @rushing_stats.to_csv, filename: "rushing.csv" }
    end
  end
end
