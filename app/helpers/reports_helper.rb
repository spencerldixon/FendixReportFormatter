module ReportsHelper
	def get_impressions_array report
		hash = report.line_items.group(:site_id).sum(:impressions)
		array_headers = ['Site', 'Impressions']
		array = hash.to_a
		array.unshift(array_headers)
	end
end
