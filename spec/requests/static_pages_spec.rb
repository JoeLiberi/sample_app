require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(page_title) }
    it { should have_link(link_name) }
  end

  it "should have the right links on the layout" do
    visit root_path

    click_link "About"
    expect(page).to have_title('About Us')
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Contact"
    expect(page).to have_title('Contact')
    click_link "Help"
    expect(page).to have_title('Help Me!')
    click_on "Sign up now!"
    expect(page).to have_title('Sign Up')
  end

  describe "Home page" do
    before { visit root_path }

    #it { should have_content('Sample App') }
    #it { should have_title(full_title('')) }
    it { should_not have_title(' | Home') }

    let(:heading) { 'Sample App' }
    let(:page_title)   { '' }
    let(:link_name) { 'Contact' }

    it_should_behave_like "all static pages"
  end

  describe "Help Page" do
    before { visit help_path }

    #it { should have_content('Help Me!') }
    #it { should have_title(full_title("Help Me!")) }
    #it { should have_title("Help Me!") }

    let(:heading)  { 'Help Me!' }
    let(:page_title)    { 'Help Me!' }
    let(:link_name) { 'Contact' }

    it_should_behave_like "all static pages"

  end

  describe "About Us" do
    before { visit about_path }

    #it { should have_content('About Us') }
    #it { should have_title(full_title("About Us")) }
    #it { should have_title("About Us") }

    let(:heading)   { 'About Us' }
    let(:page_title)     { 'About' }
    let(:link_name) { 'Contact' }

    it_should_behave_like "all static pages"

  end

  describe "Contact" do
    before { visit contact_path }

    #it { should have_content('Contact') }
    #it { should have_selector("ul", :text => 'Contact') }
    #it { should have_title("Contact") }
    #it { should have_title(full_title("Contact")) }
    #it { should have_link}

    let(:heading)   { 'Contact' }
    let(:page_title)     { 'Contact' }
    let(:link_name) { 'Contact' }

    it_should_behave_like "all static pages"


  end
end