class Report < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, dependent: :destroy
  has_many :sites, through: :line_items

  validates :name, presence: true

  def best_performing_site
  	line_item = self.line_items.order('ctr ASC').limit(1)
  	line_item.first.site.name.titleize
  end

  def total_impressions
  	self.line_items.sum(:impressions)
  end

  def total_clicks
  	self.line_items.sum(:clicks)
  end

  def average_ctr
  	total = self.line_items.sum(:ctr)
  	total / self.line_items.count
  end

  def earliest_date
    line_item = self.line_items.order('date ASC').first
    line_item.date
  end

  def latest_date
    line_item = self.line_items.order('date DESC').first
    line_item.date
  end
end
