require 'spec_helper'

describe Api::Docs do
  it 'has a version number' do
    expect(Api::Docs::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
