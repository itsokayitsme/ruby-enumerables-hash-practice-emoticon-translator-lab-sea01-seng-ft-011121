require 'pry'
require 'yaml'


def load_library(path)
 final_hash = {}
 YAML.load_file(path).each do |key, value|
   final_hash[key] = {}
   final_hash[key][:english] = value[0]
   final_hash[key][:japanese] = value[1]
  end
  final_hash
end	

	
def get_english_meaning(path, emoticon)
  load_library(path).each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
  return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon) 
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end 	