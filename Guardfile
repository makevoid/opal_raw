guard :shell do
  watch %r{.rb} do |m|
    puts `ruby opal_raw.rb`
    puts "#{m[0]} changed, regenerated opal bundle"
  end
end
