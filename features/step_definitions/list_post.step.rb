Given("use endpoint posts") do
    @post = Post.new()
end
  
When("ready all Post item") do
    $response = @post.getPosts
end
  
Then("I view all Post items") do
    expect($response.code).to eql(200)
    expect($response.body).not_to be_empty
    expect($response.body).to match_json_schema('post')
end