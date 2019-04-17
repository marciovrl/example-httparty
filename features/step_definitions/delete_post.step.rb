When("delete id item {string}") do |string|
    @url_token = @url_token+string
    @response = HTTParty.delete(@url_token, :headers => @header) 
end

Then("I see delete item") do
    expect(@response.code).to eql(200)
end