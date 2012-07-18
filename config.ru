use Rack::Static, 
  :urls => ["/default.css", "/fonts", "/js", "/styles", "/images",
  	    "/the-book/index.html", "/the-authors/index.html", "/the-language/index.html", "/bibliography/index.html"],
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

