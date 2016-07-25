# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program



#Task 2 - Experienced Candidates
#Define a method Experience? that:
#Takes in a single candidate (hash). Note: not the array.
#Returns true if the candidate has 2 years of experience or more
#Returns false otherwise
#Note: this is a method that gives you back data, it should not output (puts) anything.

def experience?(candidates)
 candidates[:years_of_experience] >= 2
end

def gitskillz(candidates)
  candidates[:git_points] >= 100
end

def languages?(candidates)
  candidates[:languages].include?("Python") || candidates[:languages].include?("Ruby")
end

def last_15_days?(candidates)
  candidates[:date_applied] >= 15.days.ago.to_date
end

#Varible names could better and relevent

#Task 3 - Finding by :id
#Define a method find that:
#Takes in an id
#Returns the candidate with that :id
#If there is no candidate with that id, it naturally returns nil 
 
def find(id)
   @candidates.find {|h| h[:id] == id}
end

def over_17?(candidates)
  candidates[:age] > 17
end

#boolenthis ^^

#Task 4 - "Qualified" Candidates
#Define a method qualified_candidates that:
#Takes in the collection of candidates
#Returns a subset of the candidates that meet the following criteria:
#Are experienced
#Have 100 or more Github points
#Know at least Ruby or Python
#Applied in the last 15 days
#Are over the age of 17 (18+)
#Tip: Consider creating other methods to help keep this one clean

#Task 5 - Sort on Experience and Points
#Define a method ordered_by_qualifications that:
#Takes in a collection of candidates
#Instead of filtering on the candidates, returns them all back but reordered such that:
#Candidates with the most experience are at the top
#For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)

def qualified_candidates(candidates)
  array = []
  candidates.each do |candidate| 
    if experience?(candidate) && languages?(candidate) && last_15_days?(candidate) && over_17?(candidate)
      array << candidate
    end
  end
  array
end



def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:git_points]] }
end

#Bonus: When printing out candidates, colour the output based on their qualification (green for qualified, red for unqualified)

def qualified_color(candidates)
  candidates.each do |candidate| 
    if experience?(candidate) && languages?(candidate) && last_15_days?(candidate) && over_17?(candidate)
      puts candidate.to_s.green
    else
      puts candidate.to_s.red
    end
  end
end

#can be put in main.rb
# More methods will go below