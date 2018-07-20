require 'rspec'
require 'spec_helper'
require 'byebug'
require_relative '../lib/printer'

module ActiveRecord
  class Base; end
end

class DummyModel < ActiveRecord::Base
  def name
    'Dummy'
  end

  def surname
    'Garcia'
  end
end

describe PrintBeauty::Printer do

  it 'print Model' do
    model = DummyModel.new
    PrintBeauty::Printer.new.print model
  end

  it 'print Hash' do
    hash = {
      name: 'Dummy',
      surname: 'Garcia',
      sublevel_one: {
        child: 'Hello Word',
        sublevel_one: {
          child: 'Hello Word',
        }
      }
    }

    PrintBeauty::Printer.new.print hash
  end

  it 'print Array' do
  end
end
