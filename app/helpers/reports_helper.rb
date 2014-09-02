module ReportsHelper
	def get_impressions_array report
		hash = report.line_items.group(:site_id).sum(:impressions)
		array_headers = ['Site', 'Impressions']
		new_hash = hash.map do |k, v|
			site = Site.find(k)
			k = site.name, v
		end
		array = new_hash.to_a
		array.unshift(array_headers)
	end

	def get_clicks_array report
		hash = report.line_items.group(:site_id).sum(:clicks)
		array_headers = ['Site', 'Clicks']
		new_hash = hash.map do |k, v|
			site = Site.find(k)
			k = site.name, v
		end
		array = new_hash.to_a
		array.unshift(array_headers)
	end

	def get_ctr_array report
		hash = report.line_items.group(:site_id).sum(:ctr)
		array_headers = ['Site', 'CTR']
		new_hash = hash.map do |k, v|
			site = Site.find(k)
			k = site.name, v
		end
		array = new_hash.to_a
		array.unshift(array_headers)
	end
end
