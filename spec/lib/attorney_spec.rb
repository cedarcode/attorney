require 'rails_helper'

RSpec.describe Attorney do
  it { expect(Attorney.basic_auth[:name]).to eq 'test' }
  it { expect(Attorney.basic_auth[:password]).to eq 'secret' }
end
