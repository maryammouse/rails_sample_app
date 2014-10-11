require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
      it { should have_selector('h1', text: heading) }
      it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:page_title) { '' }
    let(:heading) { 'Sample App' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end 

  describe "Help page" do
    before { visit help_path }

    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:heading) { 'About' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
  end 

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title('Sample App')
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
#
#the above was a started attempt at refactoring the code, back when it was a lot more verbose... Maryam
