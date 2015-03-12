require "uri"
require "date"

module KinomaxParser
  class Announce
    attr_accessor :doc, :url

    def initialize(attributes = {})
      date = Date.parse(attributes[:date]).to_s unless attributes[:date].nil?
      params = { cinema: attributes[:cinema], date: date }.compact
      @url = "http://kinomax.ru/export/schedule?#{URI.encode_www_form(params)}"
      @doc = Nokogiri::XML(File.open('./spec/fixtures/announce.xml')) if attributes[:test] == true
      doc
    end

    def result
      {
        result: @doc.at_css('result').text,
        message: @doc.at_css('message').text
      }
    end

    def cinema
      cinema = @doc.at_css('cinema')
      {
        id: cinema.attribute('id').text.to_i,
        token: cinema.attribute('token').text,
        name: cinema.text
      }
    end

    def city
      city = @doc.at_css('city')
      {
        id: city.attribute('id').text.to_i,
        name: city.text
      }
    end

    def time_zone
      zone = @doc.at_css('cityDatetime')
      {
        time_zone: zone.attribute('timezone').text,
        request_time: zone.text
      }
    end

    def schedule_date
      @doc.at_css('scheduleForDate').text
    end

    def movies
      @doc.xpath('//movies//movie').map { |movie| KinomaxParser::Movie.new(movie) }
    end

    private

    def doc
      @doc ||= KinomaxParser.parse url
    end
  end
end
