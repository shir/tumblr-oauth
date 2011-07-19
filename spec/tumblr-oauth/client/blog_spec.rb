require 'spec_helper'

describe TumblrOAuth::Client::Blog do
  let(:client) { TumblrOAuth.client }
  let(:non_authorized_client) { TumblrOAuth.client(:consumer_key => nil) }
  let(:bad_oauth_client) { TumblrOAuth.client(:consumer_key => 'sdfsfdsf') }

  describe '#info' do
    it 'should not raise error' do
      # TODO: stub request
      expect { client.info }.to_not raise_error
    end

    it 'should raise error if consumer key is bad' do
      # TODO: stub request
      expect { bad_oauth_client.info }.to raise_error
    end
  end

  describe '#avatar' do
    it 'should not raise error' do
      # TODO: stub rquest
      expect { client.avatar }.to_not raise_error
    end
  end

  describe '#followers' do
    it 'should not raise error' do
      # TODO: stub request
      expect { p client.followers }.to_not raise_error
    end

    it 'should raise error if oauth data are bad' do
      # TODO: stub request
      expect { non_authorized_client.followers }.to raise_error
    end
  end
end
