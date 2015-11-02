require 'rails_helper'

RSpec.describe Page, type: :model do
  before do
  	@page = Page.new(page_handle: "spec")
  end
  subject { @page }
  describe "when page_handle not present" do
  	before { @page.page_handle = " " }
  	it { should_not be_valid }
  end
end
