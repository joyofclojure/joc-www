use Rack::Static, 
  :urls => ["/default.css", "/fonts", "/js", "/styles", "/images",
  	    "/the-book", "/the-authors", "/the-language", "/bibliography"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

