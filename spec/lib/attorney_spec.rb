require 'rails_helper'

RSpec.describe Attorney do
  it { expect(Attorney.http_auth[:name]).to eq 'attorney' }
  it { expect(Attorney.http_auth[:password]).to eq 'secret' }
end
