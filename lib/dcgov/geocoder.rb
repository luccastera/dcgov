module DCGOV
  class GeoCoder
    #master dispatcher
    def self.get(options)
      if options[:address]
        find_by_address(options[:address])
      elsif options[:lat] && options[:lon]
        find_by_lat_lon(options[:lat],options[:lon])
      elsif options[:mar_id]
        find_by_id(options[:mar_id])
      else
        nil #dumbass.
      end
    end


    #do a search via latitude and longitude.
    def self.find_by_lat_lon(lat,lon)
       begin
        request_url =  "/geocoding/v1/getFromLatLong.json?lat=#{CGI::escape(lat)}&long=#{CGI::escape(lon)}"
        result_json = DCGOV::Util.pull_from_json(request_url)
        return result_json["addresses"].collect { |address| DCGOV::Address.new_from_hash(address["address"][0])  }
      rescue
        #crap, something went wrong
        return nil
      end
    end


    #find via a normal street address... "1600 pennsylvania"
    def self.find_by_address(address)
       begin
        request_url =  "/geocoding/v1/search.json?address=#{CGI::escape(address)}"
        result_json = DCGOV::Util.pull_from_json(request_url)
        return result_json["addresses"].collect { |address| DCGOV::Address.new_from_hash(address["address"][0])  }
      rescue
        #crap, something went wrong
        return nil
      end
    end

    #find by a mar ID
    def self.find_by_id(mar_id)
      begin
        request_url =  "/geocoding/v1/get.json?aid=#{mar_id}"
        result_json = DCGOV::Util.pull_from_json(request_url)
        return DCGOV::Address.new_from_hash(result_json["address"][0])
      rescue
        #crap, something went wrong
        return nil
      end
    end

    # just so I could make sure rspec was working.
    def self.foo
      "bar"
    end
    
  end
end