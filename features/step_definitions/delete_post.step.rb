When("delete id item {string}") do |string|
    $response = @post.deletePosts(string)
end

Then("I see delete item") do
    expect($response.code).to eql(200)
end