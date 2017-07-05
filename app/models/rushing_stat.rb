class RushingStat < ApplicationRecord
  require 'csv'

  def self.search_by_name(name)
    return all if name.nil? || name.empty?
    where("player LIKE ?", "%#{name}%")
  end

  def self.to_csv
    columns = self.column_names - %w{id created_at updated_at}

    CSV.generate(headers: true) do |csv|
      csv << columns

      all.each do |stat|
        csv << columns.map { |col| stat.send(col) }
      end
    end
  end
end
