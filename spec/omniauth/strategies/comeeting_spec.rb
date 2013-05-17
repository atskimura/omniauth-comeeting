require 'spec_helper'

describe OmniAuth::Strategies::CoMeeting do
  context "client options" do
    subject do
      OmniAuth::Strategies::CoMeeting.new({})
    end

    it "should have the correct site" do
      expect(subject.options.client_options.site).to eq('https://www.co-meeting.com')
    end

    it "should have the correct authorize url" do
      expect(subject.options.client_options.authorize_url).to eq('/oauth/authorize')
    end

    it "should have the correct token url" do
      expect(subject.options.client_options.token_url).to eq('/oauth/token')
    end
    
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/comeeting/callback')
    end
  end
end