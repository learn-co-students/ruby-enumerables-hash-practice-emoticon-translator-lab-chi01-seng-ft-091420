# require modules here
require "yaml"
require "pry"
def load_library(filename)
  # code goes here
  file = YAML.load_file(filename)
  output = {}
  file.each {|translation, array|
      output[translation] = {:english => array[0], :japanese => array[1]}
  }
  output
end

def get_japanese_emoticon(filename, emoticon)
  # code goes here
  file = load_library(filename)
  file.each {|key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  }
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(filename, emoticon)
  # code goes here
  file = load_library(filename)
  file.each {|key, value|
    if value[:japanese] == emoticon
      return key
    end
  }
  return "Sorry, that emoticon was not found"
end

load_library('lib/emoticons.yml')
