Given("use endpoint posts") do
    @url_token = "https://jsonplaceholder.typicode.com/posts"
    
    @header = {
        'Content-Type' => 'application/json'
    }
end
  
When("ready all Post item") do
    @response = HTTParty.get(@url_token, :headers => @header)
end
  
Then("I view all Post items") do
    expect(@response.code).to eql(200)
    expect(@response.body).not_to be_empty
end