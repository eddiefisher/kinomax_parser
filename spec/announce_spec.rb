require 'spec_helper'

describe KinomaxParser::Announce do
  let(:default) { KinomaxParser::Announce.new test: true }
  let(:default) { KinomaxParser::Announce.new cinema: :vladimir, date: '2015-05-13' }
  let(:data) {
    {
      result: { result: 'ok', message: '' },
      url: 'http://kinomax.ru/export/schedule?',
      cinema: { id: 4, token: 'vladimir', name: 'Киномакс-Буревестник Владимир' },
      city: { id: 3, name: 'Владимир' },
      time_zone: { time_zone: "Europe/Moscow", request_time: Time.now.strftime("%Y-%m-%d %H:%M:%I") },
      schedule_date: '2015-05-13'
    }
  }

  it { expect(default.result).to eq(data[:result]) }
  it { expect(default.url).to eq(data[:url]) }
  it { expect(default.movies.count).to eq(7) }
  it { expect(default.cinema).to eq(data[:cinema]) }
  it { expect(default.city).to eq(data[:city]) }
  it { expect(default.time_zone).to eq(data[:time_zone]) }
  it { expect(default.schedule_date).to eq(data[:schedule_date]) }
end
