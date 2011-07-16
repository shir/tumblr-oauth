require 'spec_helper'

describe TumblrOAuth::Client do
  let(:client) { TumblrOAuth.client(:consumer_key => 'TtFR0WJ0KyZkwbHJBPVtsKW1MggI8gc88Se75IT4p4M2ZDAh0h', :blog_host => 'photo.shir.me') }

  describe 'info' do
    it 'should not raise error' do
      expect { client.info }.to_not raise_error
    end
  end
end
