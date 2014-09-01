require 'test_helper'

class ReportTest < ActiveSupport::TestCase
  test "tis invalid without a name mlady" do
  	r = Report.new
    assert !r.valid?, "failed validation"
  end
end
