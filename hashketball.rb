# Write your code here!
def game_hash
 	   nba_hash = {
         home: {
             team_name: 'Brooklyn Nets',
             colors:   ["Black", "White"],
             players: {
                 'Alan Anderson' => {
                     number: 0,
                     shoe: 16,
                     points: 22,
                     rebounds: 12,
                     assists: 12,
                     steals: 3,
                     blocks: 1,
                     slam_dunks: 1
                 },
                 'Reggie Evans' => {
                     number: 30,
                     shoe: 14,
                     points: 12,
                     rebounds: 12,
                     assists: 12,
                     steals: 12,
                     blocks: 12,
                     slam_dunks: 7
                 },
                 'Brook Lopez' => {
                     number: 11,
                     shoe: 17,
                     points: 17,
                     rebounds: 19,
                     assists: 10,
                     steals: 3,
                     blocks: 1,
                     slam_dunks: 15
                 },
                 'Mason Plumlee' => {
                     number: 1,
                     shoe: 19,
                     points: 26,
                     rebounds: 12,
                     assists: 6,
                     steals: 3,
                     blocks: 8,
                     slam_dunks: 5
                 },
                 'Jason Terry' => {
                     number: 31,
                     shoe: 15,
                     points: 19,
                     rebounds: 2,
                     assists: 2,
                     steals: 4,
                     blocks: 11,
                     slam_dunks: 1
                 }
             }
         },
         away: {
             team_name: 'Charlotte Hornets',
             colors: ['Turquoise', 'Purple'],
             players: {
                 'Jeff Adrien' => {
                     number: 4,
                     shoe: 18,
                     points: 10,
                     rebounds: 1,
                     assists: 1,
                     steals: 2,
                     blocks: 7,
                     slam_dunks: 2
                 },
                 'Bismak Biyombo' => {
                     number: 0,
                     shoe: 16,
                     points: 12,
                     rebounds: 4,
                     assists: 7,
                     steals: 7,
                     blocks: 15,
                     slam_dunks: 10
                 },
                 'DeSagna Diop' => {
                     number: 2,
                     shoe: 14,
                     points: 24,
                     rebounds: 12,
                     assists: 12,
                     steals: 4,
                     blocks: 5,
                     slam_dunks: 5
                 },
                 'Ben Gordon' => {
                     number: 8,
                     shoe: 15,
                     points: 33,
                     rebounds: 3,
                     assists: 2,
                     steals: 1,
                     blocks: 1,
                     slam_dunks: 0
                 },
                 'Brendan Haywood' => {
                     number: 33,
                     shoe: 15,
                     points: 6,
           	         rebounds: 12,
                     assists: 12,
                     steals: 22,
                     blocks: 5,
                     slam_dunks: 12
                }
             }
         }
     }
 end

 def num_points_scored(player)
 	game_hash.each do |loc,values|
 		return values[:players][player][:points] if values[:players].has_key?(player)
 		end

 end

 def shoe_size(player)
 	game_hash.each do |loc,values|
 		return values[:players][player][:shoe] if values[:players].has_key?(player)
 	end
 end

 def team_colors(team)
 	game_hash.each do |loc,values|
 		return values[:colors] if values[:team_name] == team
 	end
 end

 def team_names
 	teams =[]
 	game_hash.each do |loc,values|
 		teams << values[:team_name]
 	end
 	teams
 end

 def player_numbers(team)
 	numbers=[]
 	game_hash.each do |loc,values|
 		if values[:team_name] == team
 			values[:players].each do |names,stat| # Jeff Adrien and all his stats for example
 				stat.each do |k,v| #all his stats keys and values
			numbers << v if k == :number #if key is :number then add value of that key to numbers array
 			end
 		end
 	end
 end
 	numbers
 end

 def player_stats(player)
 	game_hash.each do |loc,values|
 		return values[:players][player] if values[:players].has_key?(player)
 	end
end

def big_shoe_rebounds
	biggest_shoe = 0
	highest_rebound = 0
	game_hash.each do |loc,values|
		values[:players].each do |name,stats|
			stats.each do |k,v|
				if k == :shoe &&  v > biggest_shoe
					biggest_shoe = v
					highest_rebound = stats[:rebounds]
				end
			end
		end
	end

highest_rebound

end

