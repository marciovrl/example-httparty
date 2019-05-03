class Post
    include HTTParty
    base_uri "https://jsonplaceholder.typicode.com"

    def initialize()
        @header = {
            'Content-Type' => 'application/json'
        }    
    end

    def getPosts
        self.class.get("/posts", :headers => @header)
    end

    def postPosts(params)
        self.class.post("/posts", :headers => @header, :body => params)
    end

    def deletePosts(id)
        self.class.delete("/posts"+id, :headers => @header)
    end

    def putPosts(params)
        self.class.put("/posts/10", :headers => @header, :body => params)
    end
end