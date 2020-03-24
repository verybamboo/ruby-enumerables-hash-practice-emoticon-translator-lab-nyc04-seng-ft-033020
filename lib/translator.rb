# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end