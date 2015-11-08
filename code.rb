<<-DOC

HTTP Challenge
--------------

* Define the common HTTP verbs
  - GET: get resources/information from server
  - POST: create new resources
  - PUT/PATCH: put = replace all of a resource, patch = replace part of a resource
  - DELETE: remove resource

* Use the tool of your choice to draw the HTTP request/response cycle.
  - include a link to your diagram, here
  https://drive.google.com/file/d/0B9cCluQqotcxUklGVnNPWWxmNjg/view?usp=sharing

* Use telnet, curl, or ruby code to retrieve the messages at
  launch-academy-chat.herokuapp.com/messages

* Use telnet, curl, or ruby code to create a new message at
  launch-academy-chat.herokuapp.com/messages

  - Kernel::system method in ruby will allow you to execute command-line utilities such as curl.
  - other useful ruby libraries:
    * Net::HTTP
    * Net::Telnet

DOC

# code goes here
require 'open-uri'
require 'net/http'
require 'nokogiri'
uri = URI.parse("http://launch-academy-chat.herokuapp.com")
#http = Net::HTTP.new(uri.host, uri.port)

class Connection

  ENDPOINT = "http://launch-academy-chat.herokuapp.com"

  def initialize(endpoint = ENDPOINT)
    uri = URI.parse(endpoint)
    @http = Net::HTTP.new(uri.host, uri.port)
  end

end

#content = Net::HTTP.get(uri)
#puts content
#doc = Nokogiri::HTML(File.open("http://launch-academy-chat.herokuapp.com/messages/"))


=begin
require 'net/http'
url = 'http://launch-academy-chat.herokuapp.com/messages/'
uri = URI.parse(url)
Net::HTTP.get(uri)

uri = URI("http://launch-academy-chat.herokuapp.com/messages")
content = Net::HTTP.get(uri)
puts content
=end
