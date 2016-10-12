# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.find { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    true
  else
    false
  end
end

def points?(candidate)
  if candidate[:github_points] >= 100
    true
  else
    false
  end
end

def rubyorpy?(candidate)
  if (candidate[:languages].include?('Ruby') or candidate[:languages].include?('Python'))
    true
  else
    false
  end
end

def dayssinceapplied?(candidate)
  if (DateTime.now - DateTime.parse(candidate[:date_applied].to_s)).to_i <= 15
    true
  else
    false
  end
end

def age?(candidate)
  if candidate[:age] >= 18
    true
  else
    false
  end
end

def qualified_candidates(candidates)
  # Your code Here
  candidates.select { |i| experienced?(i) && points?(i) && rubyorpy?(i) && age?(i) && dayssinceapplied?(i) }
end

# More methods will go below

def sort(candidates)
  candidates.sort do |l, r|
    if (l[:years_of_experience] <=> r[:years_of_experience]) == 0
      r[:github_points] <=> l[:github_points]
    else
      r[:years_of_experience] <=> l[:years_of_experience]
    end
  end
end
