require "uri"

module KinomaxParser
  class Movie
    attr_accessor :id, :url, :title

    def initialize(attributes = {})
      params = { cinema: attributes[:cinema], date: attributes[:date] }.compact
      @url = "http://kinomax.ru/export/schedule?#{URI.encode_www_form(params)}"
    end

    private
  end
end
