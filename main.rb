require_relative 'error.rb'

def is_potential_friend(interest_1, interest_2)

  if (interest_1.size === 0 || interest_2.size === 0)
    return Error.emptyArray
  end

  if ((interest_1.size === 1 && interest_2.size === 1) && (interest_1[0] === interest_2[0]))
    return true
  end


  count_interests = 0

  interest_1.each_with_index do |item, index|
    interest_2.each_with_index do |itm, idx|
      if itm === item
        count_interests = count_interests + 1
      end
    end
  end
  if count_interests >= 2
    return true
  end
  return false
end

is_potential_friend(
  ["sports", "music", "chess"],
  ["coding", "music", "netfli", "chess"]
)



#Given two sets of two people's different interests, return whether both people have at least two things in common or have exact interests. Return true if there's a potential friend!

#is_potential_friend(
  #["sports", "music", "chess"],
  #["coding", "music", "netfli", "chess"]
#) ➞ true

#is_potential_friend(
  #["cycling", "technology", "drawing"],
  #["dancing", "drawing"]
#) ➞ false

#is_potential_friend(
  #["history"],
  #["history"]
#) ➞ true