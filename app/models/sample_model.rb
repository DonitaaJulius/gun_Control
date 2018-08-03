class Gun_Control
    
  def initialize
      @tally_stats = 0
      @tally_law = 0
      @tally_events = 0
      @subjects = {"correct" => ["350 million", "13000", "US", "290", "21", "65", "4", "Doing background checks", "60000-120000","not as much as it should be"]}
  end 
  
  def q1(answer)
      if answer == @subjects["correct"][0]
          @tally_stats += 10
      else 
          @tally_stats -=0
      end
  end 
  
  def q2(answer)
      if answer == @subjects["correct"][1]
          @tally_stats += 10
      else 
          @tally_stats -=0
      end
  end 
  
  def q3(answer)
      if answer == @subjects["correct"][2]
          @tally_stats += 10
      else 
          @tally_stats -=0
      end
  end 
  
  def q4(answer)
      if answer == @subjects["correct"][3]
          @tally_stats += 10
      else 
          @tally_stats -= 0
      end
  end 
  
  def q5(answer)
      if answer == @subjects["correct"][4]
          @tally_law += 10
      else 
          @tally_law -= 0
      end
  end 
  
  def q6(answer)
      if answer == @subjects["correct"][5]
          @tally_law += 10
      else 
          @tally_law -= 0
      end
  end 
      
  def q7(answer)
      if answer == @subjects["correct"][6]
          @tally_law += 10
      else 
          @tally_law -=0
      end
  end 
      
  def q8(answer)
      if answer == @subjects["correct"][7]
          @tally_events += 10
      else 
          @tally_events -=0
      end
  end 
      
  def q9(answer)
      if answer == @subjects["correct"][8]
          @tally_events += 10
      else 
          @tally_events -=0
      end
  end 
  
  def q10(answer)
      if answer == @subjects["correct"][9]
          @tally_events += 10
      else 
          @tally_events -=0
      end
  end 
      
  def play_quiz(stats1, stats2, stats3, stats4, permit, cost, valid, reduce, defense, support)
      q1(stats1)
      q2(stats2)
      q3(stats3)
      q4(stats4)
      q5(permit)
      q6(cost)
      q7(valid)
      q8(reduce)
      q9(defense)
      q10(support)
      
      return [@tally_events, @tally_law, @tally_stats]
  end 
end 