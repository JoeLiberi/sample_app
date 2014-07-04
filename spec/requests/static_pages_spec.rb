require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title(' | Home') }

  end

  describe "Help Page" do
    before { visit help_path }

    it { should have_content('Help Me!') }
    #it { should have_title(full_title("Help Me!")) }
    it { should have_title("Help Me!") }

  end

  describe "About Us" do
    before { visit about_path }

    it { should have_content('About Us') }
    #it { should have_title(full_title("About Us")) }
    it { should have_title("About Us") }

  end

  describe "Contact" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title("Contact") }
    #it { should have_title(full_title("Contact")) }

  end
end