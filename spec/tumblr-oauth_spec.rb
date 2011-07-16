require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "TumblrOauth" do
  it 'should loads success' do
    expect { TumblrOAuth }.to_not raise_error
  end
end
