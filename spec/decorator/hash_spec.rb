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

  it 'decorate one level' do
    hash = { name: 'test' }
    puts decorator.decorate(hash)
    expect(decorator.decorate(hash)).to eq '"\e[0;31;49m { \n\e[0m\e[0;31;49m\tname => \e[0m\e[0;32;49mtest\e[0m\n\e[0;31;49m } \n\e[0m"'
  end

  it 'decorate two level' do
    book = double("book")
    hash = { name: 'test', level_one: { surname: 'garcia', level_two: { object: book }}}
    puts decorator.decorate(hash)
    byebug
    expect(decorator.decorate(hash)).to eq '"\e[0;31;49m { \n\e[0m\e[0;31;49m\tname => \e[0m\e[0;32;49mtest\e[0m\n\e[0;31;49m } \n\e[0m"'
  end

end
