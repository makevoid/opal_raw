# required: opal + browser
`self.$require("browser");`
`self.$require("browser/http");`

$line = 1

def add_element
  DOM {
    div.info {
      span.red "added line: #{$line}"
    }
  }.append_to($document["container"])
end

handle_click = -> do
  $line += 1
  add_element
end

$document.ready do
  add_element

  $document["container"].on :click, &handle_click
end


# Browser::HTTP.get "/test.json" do
#   on :success do |res|
#     alert res.json.inspect
#   end
# end
