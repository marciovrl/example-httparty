When("add item Post with {string} and {string}") do |title, body|
    @params = {
        :title => title,
        :body => body
    }.to_json
    puts @url_token
    @response = HTTParty.put(@url_token, :headers => @header, :body => @params)
end
  
Then("I see inserted item") do
    expect(@response.code).to eql(201)
    expect(@response["title"]).to eql("API Testing")
    expect(@response["body"]).to eql("Example testing API with Ruby")
end
  
When("add item Post without {string} or {string}") do |title, body|
    @params = {
        :title => title,
        :body => body
    }.to_json

    @response = HTTParty.put(@url_token+"/5", :headers => @header, :body => @params)
end

Then("I receive invalid action message") do
    expect(@response.code).to eql(404)
end