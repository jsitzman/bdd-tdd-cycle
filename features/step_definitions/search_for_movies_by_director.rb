Given /^the following movies exist:$/ do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*?)" should be "(.*?)"$/ do |title1, director1|
  Movie.find_by_title(title1).director.should match director1
end