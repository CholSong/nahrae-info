require 'spec_helper'

describe "Static pages" do
  subject{ page }  
  describe "Home page" do
    it "should have the content 'Video Chat'" do
      visit '/static_pages/home'
      should have_content('Video Chat')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      should have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      should have_content('About Us')
    end
  end


  it "should have the title 'About Us'" do
    visit '/static_pages/about'
    should have_selector('title',
      :text => "Rails Video Chat Video Chat | About Us")
  end
end