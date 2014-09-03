module ApplicationHelper
	def fullname user
		"#{user.first_name} #{user.last_name}"
	end

	def pdf_image_tag filename, options = {}
	  path = "/assets/images/#{filename}"
	  options[:src] = path.to_s


	  attributes = options.map { |k,v| "#{k}='#{v}'" }.join(" ")
	  raw("<img #{attributes}/>")
	end

	def absolute_image_tag(*args)
	  raw(image_tag(*args).sub /src="(.*?)"/, "src=\"#{request.protocol}#{request.host_with_port}" + '\1"')
	end
end

