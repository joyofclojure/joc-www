use Rack::Static, 
  :urls => ["/default.css", "/fonts", "/js", "/styles", "/images"],
  :root => "public"

@root = File.expand_path(File.dirname(__FILE__)) + "/public"

run Proc.new { |env|
  # Extract the requested path from the request
  path = Rack::Utils.unescape(env['PATH_INFO'])
  index_file = @root + "#{path}/index.html"

  if File.exists?(index_file)
    # Return the index
    [200, {'Content-Type' => 'text/html'}, [File.read(index_file)]]
  elsif path =~ /cljr$/
    [301, {'Location' => 'http://incanter.org/downloads/cljr-installer.jar'}, ['Redirecting...']]
  elsif path =~ /src$/
    [301, {'Location' => 'http://github.com/joyofclojure/book-source'}, ['Redirecting...']]
  elsif path =~ /hello$/
    [200, {'Content-Type' => 'text/plain'}, ['Hello Cleveland']]
  else
    # Pass the request to the directory app
    Rack::Directory.new(@root).call(env)
  end
}

