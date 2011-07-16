require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "TumblrOauth" do
  it 'should loads success' do
    expect { TumblrOAuth }.to_not raise_error
  end

  describe 'client' do
    it 'should create Client instance' do
      TumblrOAuth.client.should be_a(TumblrOAuth::Client)
    end

    it 'should delegate uknown methods to Client' do
      test_string = 'test string'
      TumblrOAuth::Client.send :define_method, :test_method do
        return test_string
      end

      TumblrOAuth.test_method.should == test_string
    end

    it 'should corretly answer for respond_to for Client methods' do
      TumblrOAuth::Client.send :define_method, :test_method do
        return 'test string'
      end

      TumblrOAuth.should respond_to(:test_method)
    end
  end
end
