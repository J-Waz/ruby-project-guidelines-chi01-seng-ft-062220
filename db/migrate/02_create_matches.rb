class CreateMatches < ActiveRecord::Migration[4.2]
    
    def change
      create_table :matches do |t|
        t.string :away_team
        t.string :home_team
        t.datetime :match_date
        t.time :start_time
      end
    end
  end