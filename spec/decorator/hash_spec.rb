require 'rspec'
require 'spec_helper'
require 'byebug'
require_relative '../../lib/printer'

describe PrintBeauty::Decorator::Hash do

  let(:decorator) { PrintBeauty::Decorator::Hash }

  it 'valid ok' do
    hash = { name: 'test' }
    expect(decorator.valid? hash).to be true
  end

  it 'valid false' do
    hash = 'test'
    expect(decorator.valid? hash).to be false
  end

  it 'decorate' do
  end
end
