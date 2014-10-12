require 'spec_helper'

describe "AuthenticationPages" do
    
    subject { page }

    describe "the title and content are there" do
        before { visit signin_path } 
        
        it { should have_title(full_title('Sign in')) }
        it { should have_content('Sign in') }
    end


end
