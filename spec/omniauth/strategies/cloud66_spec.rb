require 'spec_helper'

describe OmniAuth::Strategies::Cloud66 do
  subject do
    OmniAuth::Strategies::Cloud66.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://app.cloud66.com/api/2")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq("https://app.cloud66.com/oauth/authorize")
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq("https://app.cloud66.com/oauth/token")
    end
  end
end
