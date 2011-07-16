require 'spec_helper'

describe TumblrOAuth::Client::Blog do
  let(:client) { TumblrOAuth.client }

  describe '#info' do
    it 'should not raise error' do
      expect { client.info }.to_not raise_error
    end
  end

  describe '#avatar' do
    it 'should not raise error' do
      expect { client.avatar }.to_not raise_error
    end
  end
end
