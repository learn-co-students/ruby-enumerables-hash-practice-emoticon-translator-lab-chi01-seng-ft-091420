# require modules here
require "pry"
require "yaml"
def load_library (hash)
  result = {}
  YAML.load_file(hash).each do |key,value|
  result[key] = {}
  result[key][:english] = value[0]
  result[key][:japanese] = value[1]
end
result
end 

def get_english_meaning (hash, emoticon)
  load_library(hash).each do |key, value|
    if value[:japanese] == emoticon
      return key 
    end 
  end 
     return "Sorry, that emoticon was not found"
  end 
  # code goes here

def get_japanese_emoticon(hash, emoticon)
  load_library(hash).each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end 
    return "Sorry, that emoticon was not found"
end 