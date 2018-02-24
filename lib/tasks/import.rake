namespace :import do
  base_dir = Rails.root.to_s + "/lib/seeds/"
  desc "TODO"
  task batters: :environment do
    filename = "HitterSalaries.csv"

  end

  desc "Import Pitchers from Pitchers CSV file"
  task pitchers: :environment do
    filename = "PitcherSalaries.csv"
    filepath = base_dir + filename
    puts "Importing #{filepath}..."
    options = {}
    #add some feedback like # of rows imported, etc
    SmarterCSV.process(filepath, options) do |chunk|
      # This will just add all the rows to what's already in the db. should either
      # clear out first, or only add new items and update existing ones
      chunk.each do |data_hash|
        Pitcher.create( data_hash )
      end
    end
  end

end
