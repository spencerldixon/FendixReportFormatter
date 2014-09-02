PDFKit.configure do |config|
#  # config.wkhtmltopdf = '/path/to/wkhtmltopdf'
	config.default_options = {
	  :print_media_type => true,
	  :encoding=>"UTF-8",
	  :page_size=>"Letter", #or "Letter" or whatever needed
	  :disable_smart_shrinking=>false
	}
 
  config.root_url = "#{Rails.root}"
 	config.verbose = false
end