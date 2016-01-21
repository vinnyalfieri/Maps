require 'open-uri'

class Paris

  PARIS_URL = 'http://opendata.paris.fr/api/records/1.0/search/?dataset=sanisettesparis2011&rows=9999'

  def intialize
    
  end

  def get_json(url)
    JSON.load(open(url))
  end

  def load_paris
    paris_data = get_json(PARIS_URL)
    build_paris(paris_data)
  end

  def build_paris(paris_hash)
    paris_hash["records"].each do |record|
      record["fields"]["geom"]["coordinates"].each do |coordinates_array|
        coordinates_array.each do |coordinates|
          toilet = Toilet.new
          toilet.city = City.find_by({ :name => 'Paris'})
          toilet.lat = coordinates[1]
          toilet.long = coordinates[0]
          toilet.save
        end
      end
    end
  end


end