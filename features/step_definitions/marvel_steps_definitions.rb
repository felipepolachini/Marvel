
Given ("Get the number of heroes {string}") do |number|
  Marvel_Class.GetHeroes(number)
end

Then ("Return the heroes") do
  raise "No heroes returned" unless expect(Marvel_Class.returnResponseCode).to eq 200
  Marvel_Class.returnHeroes
end

Given("Get character information {string}") do |id|
  Marvel_Class.GetCharacter(id)
end

Given("Get character comics {string}") do |id|
  Marvel_Class.GetCharacterComics(id)
end

Then("Return comics") do
  raise "No comics returned" unless expect(Marvel_Class.returnResponseCode).to eq 200
  Marvel_Class.returnComics
end
