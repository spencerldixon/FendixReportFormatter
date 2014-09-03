class LineItem < ActiveRecord::Base
	belongs_to :report
	belongs_to :site

	def self.import(file, report)
		begin
			# TODO - Change these to be addressed by headers
			CSV.foreach(file.path, headers: true) do |row|							# use headers like row[date]
				record = LineItem.where(
					:date => Date.strptime(row[0], "%d/%m/%Y").to_s(:db),
					:campaign => row[1], 
					:site => Site.where(name: row[2]).first_or_create,
					:impressions => row[3], 
					:clicks => row[4],
					:ctr => ((row[4].to_f/row[3].to_f)*100),
					:report => report).first_or_create
				record.save!
			end
		rescue => e
		  raise "Cannot import file, #{e}. Is this a valid csv? Please try again."
		end
	end
end
