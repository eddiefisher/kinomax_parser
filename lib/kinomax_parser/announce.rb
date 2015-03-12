require "uri"

module KinomaxParser
  class Announce
    attr_accessor :doc, :url

    def initialize(attributes = {})
      params = { cinema: attributes[:cinema], date: attributes[:date] }.compact
      @url = "http://kinomax.ru/export/schedule?#{URI.encode_www_form(params)}"
      @doc = Nokogiri::XML(File.open('./spec/fixtures/announce.xml')) if attributes[:test] == true
    end

    def movies
      doc.xpath('//movies//movie').map { |movie| KinomaxParser::Movie.new(movie) }
    end

    private

    def doc
      @doc ||= KinomaxParser.parse url
    end
  end
end
