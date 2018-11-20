Given("I call the api to authenticate") do
  # @response =  RestClient.get , content_type: :json, accept: :json, 'X-Auth-Token': => "mykey")

  url = "https://devapi.currencycloud.com/v2/authenticate/api"
  request = {login_id: 'jose.pettoruti@currencycloud.com', api_key: ''}.to_json

  @response = RestClient.post( 
                    url, 
                    request,
                    :content_type => :json, :accept => :json)
  puts @response

  # , :'X-Auth-Token' => ""
  
end

Then("I should get the auth_token returned") do

  parsed_respose =   JSON.parse(@response)
  token = parsed_respose["auth_token"]
  
  puts "token #{parsed_respose["auth_token"]}"

  if token && token.length == 32
        puts "all good"
  else
        raise "no token"
  end

end
