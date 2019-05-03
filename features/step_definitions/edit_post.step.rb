When("edit value title of item Post for {string}") do |string|
    params = {
        :title => string,
    }.to_json
    
    $response = @post.putPosts(params)

end

Then("I see title value edited with {string}") do |string|
    expect($response.code).to eql(200)
    expect($response["title"]).to eql(string)
end
  
When("edit value body of item Post for {string}") do |string|
    params = {
        :body => string,
    }.to_json
    
    $response = @post.putPosts(params)

end

  
Then("I see body value edited with {string}") do |string|
    expect($response.code).to eql(200)
    expect($response["body"]).to eql(string)
end