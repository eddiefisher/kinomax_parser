require 'spec_helper'

describe KinomaxParser::Announce do
  let(:default) { KinomaxParser::Announce.new test: true }

  it { expect(default.url).to eq('http://kinomax.ru/export/schedule?') }
  it { expect(default.movies.count).to eq(6) }
end
