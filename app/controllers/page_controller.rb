class PageController < ApplicationController
  def home
    @rushing_stats = RushingStat.all
  end
end
