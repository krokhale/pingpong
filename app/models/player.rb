class Player < ActiveRecord::Base

  def self.scoring_algorithm(player_one_name, player_two_name, winner)
    #player  = Player.find_by_name()
    # if both start at nil, the winning player gets 5 points and the rank is updated to 1, and the other player rank becomes the next rank, and the other player point is 0
    player1 = Player.where("name = ?", player_one_name).first
    player2 = Player.where("name = ?", player_two_name).first
    puts player1.inspect
    puts player2.inspect

    if player1.points.nil? && player2.points.nil?
      if winner.eql? "one" #winner.eql? "one"
        player1.update_attribute(:points, 5)
        player1.update_attribute(:rank, 1)
        player2.update_attribute(:rank, 2)
      else
        player2.update_attribute(:points, 5)
      end
    elsif player1.points > player2.points
      player1.points = player1.points - player2.points
      #player2.points = 0
      player2.update_attribute(:points, 0)

    elsif player1.points < player2.points
      player2.points = player2.points - player1.points
      player1.update_attribute(:points, 0)
    else
      false
    end
  end

end
