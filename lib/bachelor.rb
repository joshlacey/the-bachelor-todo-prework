require 'pry'
def get_first_name_of_season_winner(data, season)
    contestant = ""
    data[season].each do |hash|
        if hash["status"] == "Winner"
            contestant= hash["name"].split.shift
            end
        end
    contestant
end

def get_contestant_name(data, occupation)
    contestant = ""
    data.each do |season, list|
        list.each do |hash|
            if hash["occupation"] == occupation
                contestant = hash["name"]
            end
        end
    end
    contestant
end

def count_contestants_by_hometown(data, hometown)
    hometown_count = 0
    data.each do |season, list|
        list.each do |hash|
            if hash["hometown"] == hometown
                hometown_count += 1
            end
        end
    end
    hometown_count
end

def get_occupation(data, hometown)
  contestant = ""
  data.each do |season, list|
      list.find do |hash|
          if hash["hometown"] == hometown
              contestant = hash["occupation"]
            end
          end
      end
  contestant
end

def get_average_age_for_season(data, season)
    ages_total = 0
  data[season].each do |hash|
      ages_total += hash["age"].to_i
      end
  ave_age = (ages_total / data[season].length.to_f)
  ave_age.round
end

