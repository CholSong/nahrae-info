require 'spec_helper'

describe "Video Chat pages" do

  subject { page }

 

	describe "Video Chat page" do
		it "should have the content 'Video Chat'" do
	      visit vchat_path
	      should have_selector('h1', :text => "Video Chat")
	    end
	end


end