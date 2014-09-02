PDFKit.configure do |config|
#  # config.wkhtmltopdf = '/path/to/wkhtmltopdf'
	config.default_options = {
	  :print_media_type => true,
	  :encoding=>"UTF-8",
	  :page_size=>"A4", #or "Letter" or whatever needed
	  :disable_smart_shrinking=>false
	}
 
 # Use only if your external hostname is unavailable on the server.
 config.root_url = "http://localhost/"
 config.verbose = false
end