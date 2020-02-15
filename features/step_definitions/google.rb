Given /I am on google/ do
  visit(Google) do |page|
    page
  end
end

When /^I search (\w+)$/ do |search_term|
  @search_term = search_term
  on(Google).search(@search_term)
end

Then /I see results/ do 
  on(Google) do |page|
    expect(page.text.downcase!).to include(@search_term)
  end
end