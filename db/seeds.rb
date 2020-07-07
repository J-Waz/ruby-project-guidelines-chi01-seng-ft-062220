Spreadsheet.client_encoding = 'UTF-8'
@book = Spreadsheet.open './EPL_Fixturelist_1920.xls'
@sheet1 = @book.worksheet 0


@sheet1.each do |row|
    Match.new(row[1], row[5], row[6])
end 

# User.create(name: "Mork")
# User.create(name: "Bill")
# User.create(name: "terry")
# User.create(name: "matthew")
# User.create(name: "gail")

# Match.create(home_team: "Wolves", away_team: "dogs", location: "london")
# Match.create(home_team: "Wolves", away_team: "cats", location: "london")
# Match.create(home_team: "cats", away_team: "mice", location: "paris")
# Match.create(home_team: "bears", away_team: "dogs", location: "paris")
# Match.create(home_team: "mice", away_team: "dogs", location: "chicago")

# Favorite.create(user_id: 1, match_id:1)
# Favorite.create(user_id: 1, match_id:2)
# Favorite.create(user_id: 4, match_id:1)
# Favorite.create(user_id: 4, match_id:4)


# user1 = User.create(name: "jacob")
# match1 = Match.create(home_team: "weasels", away_team: "birds", location: "florida")
# match2 = Match.create(home_team: "cats", away_team: "birds", location: "florida")
# match3 = Match.create(home_team: "bears", away_team: "birds", location: "florida")
# fav1 = Favorite.create(user_id: user1.id, match_id: match1.id)
# fav2 = Favorite.create(user_id: user1.id, match_id: match2.id)