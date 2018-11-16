def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
  contestant.each do |info, status|
    if status == "Winner"
      full_name = contestant["name"]
      return full_name.split(" ").first
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |x, job|
        if job == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_array|
    contestant_array.each do |x|
      if x == "hometown"
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
