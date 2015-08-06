require 'bundler'
Bundler.require

Opal.append_path "./"
File.binwrite "main.js", Opal::Builder.build("app").to_s
