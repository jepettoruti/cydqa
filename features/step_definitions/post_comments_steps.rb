Given("I call the api to get the comments from a post") do
  @response =  RestClient.get "http://jsonplaceholder.typicode.com/posts/1/comments", content_type: :json, accept: :json
end

Then("I should get the comments returned") do

    parsed_respose =   JSON.parse(@response)
    all = parsed_respose[0].map do |key,value|
        value != nil
    end
    puts all
  if all.all?
        puts "all good"
  else
        raise "empty fields"
  end
end