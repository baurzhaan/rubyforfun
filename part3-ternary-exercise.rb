=begin

Rewrite the following examples with ternary operator:

if friends_are_also_coming? && !is_it_raining
  go_party
else
  stay_home
end

=end

def friends_are_also_coming?
  true
end

def is_it_raining?
  true
end

def go_party
  puts 'go party'
end

def stay_home
  puts 'stay home'
end

friends_are_also_coming? && !is_it_raining? ? go_party : stay_home 