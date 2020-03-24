# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  
  translated = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  
  emoticons.each do |key,value|
    translated['get_emoticon'][value[0]] = emoticons[key][1]
    translated['get_meaning'][value[1]] = key
  end

  translated
end

def get_japanese_emoticon(file)
  # code goes here
  result = load_library(file)['get_emoticon'][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end