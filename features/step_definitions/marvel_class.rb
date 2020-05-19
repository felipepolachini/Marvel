# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

class Marvel_Class
  def initialize
    
    @URI = CONFIG["URI"]
    @API = CONFIG["api"]
    @apikey = CONFIG["apikey"]
    
  end
  
  def self.GetHeroes(number)    
    header = {"Content-Type" => "application/json",
      "Accept" => "application/json",
    }
    
     request = CONFIG["URI"].to_s+CONFIG["api"].to_s+"?limit=#{number}&apikey="+CONFIG["apikey"].to_s

     puts request
    
     @response = HTTParty.get(request,:headers => header)
  end
  
  def self.GetCharacter(id)
      header = {"Content-Type" => "application/json",
        "Accept" => "application/json",
      }
      request = CONFIG["URI"].to_s+CONFIG["api"].to_s+"/#{id}?apikey="+CONFIG["apikey"].to_s
      puts request
    
      @response = HTTParty.get(request,:headers => header)

  end
  
  def self.GetCharacterComics(id)
      header = {"Content-Type" => "application/json",
        "Accept" => "application/json",
      }

      request = CONFIG["URI"].to_s+CONFIG["api"].to_s+"/#{id}/comics?apikey="+CONFIG["apikey"].to_s
      puts request

      @response = HTTParty.get(request,:headers => header)
    
  end

  def self.returnResponseCode
    puts @response.parsed_response
    return @response.code
  end  
  
  def self.returnHeroes
      puts @response.parsed_response['results']     
  end
  
  def self.returnComics    
      puts @response.parsed_response['results']['comics']
  end
  
end
