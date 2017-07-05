class ParseJsonToDbRecords < ActiveRecord::Migration[5.1]
  def change
    json_file = File.read("./test/fixtures/files/rushing.json")
    json = JSON.parse(json_file)
    json.each do |body|
      RushingStat.create(hash_to_params(body))
    end
  end

  private

  def hash_to_params(hash)
    {
      player:            hash["Player"],
      team:              hash["Team"],
      pos:               hash["Pos"],
      att:               hash["Att"],
      att_per_game:      hash["Att/G"],
      yrds:              hash["Yds"],
      avg:               hash["Avg"],
      yrds_per_game:     hash["Yds/G"],
      td:                hash["TD"],
      lng:               hash["Lng"],
      first_downs:       hash["1st"],
      first_downs_perc:  hash["1st%"],
      plus_twenty:       hash["20+"],
      plus_forty:        hash["40+"],
      fum:               hash["FUM"],
    }
  end
end
