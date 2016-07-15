require 'byebug'
require 'net/http'
require 'json'


@host = 'localhost'
@port = '3000'
@post_ws = "/api/sensor_data"

@payload ={
  "type"=>"FloatDatum", 
  "data_type_id"=>"2",
  "float_datum" => {
    "sensor_id"=>"2",
    "captured_at(1i)"=>"2016", 
    "captured_at(2i)"=>"6", 
    "captured_at(3i)"=>"15", 
    "captured_at(4i)"=>"08", 
    "captured_at(5i)"=>"59", 
    "captured_at(6i)"=>"56", 

    "fdata"=>"22002"
  }  
}.to_json
  
def post
 req = Net::HTTP::Post.new(@post_ws, initheader = {'Content-Type' =>'application/json'})
 req.body = @payload
 response = Net::HTTP.new(@host, @port).start {|http| http.request(req) }
 puts "Response #{response.code} #{response.message}: #{response.body}"
end

t = post
puts t