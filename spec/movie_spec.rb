require 'spec_helper'

describe KinomaxParser::Movie do
  let(:no_params) { KinomaxParser::Movie.new }

  it "check url" do
    expect(no_params.url).to eq('http://kinomax.ru/export/schedule?')
  end
end
