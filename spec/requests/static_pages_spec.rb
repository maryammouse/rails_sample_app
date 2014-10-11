require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end 

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end

  #it "should have the right title" do
     # pages = Hash.new
     # pages['/static_pages/home'] = 'Home'
     # pages[about_path] = 'About Us'
     # pages[contact_path] = 'Contact'
     # pages[help_path] = 'Help'
     # pages.each { |page, name| 
     #     visit page 
     #     expect(page).to have_title("Ruby on Rails Tutorial Sample App | #{name}")
     # }
  #end
