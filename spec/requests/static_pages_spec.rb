require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do 
    it "should have the content 'Sample App'" do 
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end 

    it "Should have the base title" do 
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "Should have the right title" do 
      visit '/static_pages/home' 
      page.should_not have_selector('title', :text => "#{base_title} | Home")
    end

  end

  describe "Help Page" do 
    it "Should have the content 'Help'" do 
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "Should have the right title" do 
      visit '/static_pages/help' 
      page.should have_selector('title', :text => "#{base_title} | Help")
    end

  end

  describe "About Page" do 
    it "Should have the content 'About Us'" do 
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "Should have the right title" do 
      visit '/static_pages/about' 
      page.should have_selector('title', :text => "#{base_title} | About Us")
    end
  end

  describe "Contact Page" do 
    it "Should have the content 'Contact Us'" do 
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end 

    it "Should have the right title" do 
      visit '/static_pages/contact' 
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
  end
end

